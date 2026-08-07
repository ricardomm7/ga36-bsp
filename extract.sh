#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
source scripts/common.sh
need_original
mkdir -p "$EXTRACT"/{partitions,boot,binwalk,dtb,analysis} "$LOGS"
before="$(stat -c '%s:%Y' "$ORIGINAL")"
# Do not duplicate the 14+ GiB source by default. Every artefact below is a
# separately written copy; the source remains in place and is only read.
fdisk -l "$ORIGINAL" | tee "$EXTRACT/analysis/fdisk.txt"
parted -s "$ORIGINAL" unit s print 2>&1 | tee "$EXTRACT/analysis/parted.txt" || true
# Full 14+ GiB signature scanning is opt-in; it is forensic, not needed for
# the initial boot-chain extraction.
if [ "${SCAN_FULL_IMAGE:-0}" = 1 ]; then
  binwalk "$ORIGINAL" | tee "$EXTRACT/analysis/binwalk.txt" || true
else
  echo 'Skipped full-image binwalk; set SCAN_FULL_IMAGE=1 to enable.' > "$EXTRACT/analysis/binwalk.txt"
fi
dd if="$ORIGINAL" of="$EXTRACT/boot/sector-0-16MiB.bin" bs=1M count=16 status=progress
for spec in "2 73728 65536 boot-fat16" "5 139264 32768 linux-16m" "6 172032 65536 linux-32m"; do
  set -- $spec; dd if="$ORIGINAL" of="$EXTRACT/partitions/$4.img" bs=512 skip="$2" count="$3" iflag=fullblock status=progress
done
if [ "${EXTRACT_LARGE:-0}" = 1 ]; then
  dd if="$ORIGINAL" of="$EXTRACT/partitions/system.img" bs=512 skip=237568 count=1048576 iflag=fullblock status=progress
  dd if="$ORIGINAL" of="$EXTRACT/partitions/roms-fat32.img" bs=512 skip=3383336 count=26965975 iflag=fullblock status=progress
fi
binwalk "$EXTRACT/boot/sector-0-16MiB.bin" 2>&1 | tee "$EXTRACT/analysis/binwalk-boot.txt" || true
if [ "${DEEP_BOOT_EXTRACTION:-0}" = 1 ]; then
  binwalk -Me "$EXTRACT/boot/sector-0-16MiB.bin" -C "$EXTRACT/binwalk" 2>&1 | tee "$EXTRACT/analysis/binwalk-boot-deep.txt" || true
fi
if command -v unpackbootimg >/dev/null; then
  mkdir -p "$EXTRACT/boot/android-bootimg"
  unpackbootimg -i "$EXTRACT/partitions/linux-32m.img" -o "$EXTRACT/boot/android-bootimg" 2>&1 | tee "$EXTRACT/analysis/unpackbootimg.txt" || true
elif command -v abootimg >/dev/null; then
  (cd "$EXTRACT/boot" && abootimg -x ../partitions/linux-32m.img) 2>&1 | tee "$EXTRACT/analysis/abootimg.txt" || true
fi
find "$EXTRACT" -type f \( -name '*.dtb' -o -name '*.dtbo' \) -print0 | while IFS= read -r -d '' f; do
  base="$(basename "$f")"; dtc -I dtb -O dts "$f" -o "$EXTRACT/dtb/$base.dts" 2>>"$LOGS/dtc.log" || true
done
after="$(stat -c '%s:%Y' "$ORIGINAL")"
[ "$before" = "$after" ] || { echo 'FATAL: source image hash changed' >&2; exit 99; }
if [ "${VERIFY_FULL_HASH:-0}" = 1 ]; then sha256sum "$ORIGINAL" > "$EXTRACT/original.sha256"; fi
echo "Extraction complete. Set EXTRACT_LARGE=1 to copy SYSTEM and ROM partitions."

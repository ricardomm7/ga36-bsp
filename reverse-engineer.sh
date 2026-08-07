#!/usr/bin/env bash
# Complete, read-only forensic acquisition of the vendor SD image.
set -euo pipefail
cd "$(dirname "$0")"
source scripts/common.sh
need_original
BASE="$EXTRACT/forensics"
PARTS="$BASE/partitions"
FILES="$BASE/filesystems"
ART="$BASE/artifacts"
REPORT="$BASE/reports"
mkdir -p "$PARTS" "$FILES" "$ART"/{bootloader,android-boot,dtb,kernel,ramdisk} "$REPORT"

source_stat_before="$(stat -c '%s:%Y:%i' "$ORIGINAL")"
dd_range() { # name, start sector, count
  local name="$1" start="$2" count="$3" out
  out="$PARTS/$name.img"
  [ -s "$out" ] && [ "$(stat -c %s "$out")" -eq "$((count * 512))" ] && return
  dd if="$ORIGINAL" of="$out" bs=512 skip="$start" count="$count" iflag=fullblock status=progress
}

# Raw Rockchip loader/reserved region and every MBR/logical partition.
dd_range rockchip-reserved 0 73728
dd_range boot-fat16 73728 65536
dd_range trust-or-key 139264 32768
dd_range android-boot 172032 65536
dd_range system 237568 1048576
dd_range userdata 1286144 2097192
dd_range roms-fat32 3383336 26965975

# A partition is never mounted.  7z and debugfs parse copies read-only.
extract_7z() { local image="$1" dest="$2"; mkdir -p "$dest"; 7z x -y -o"$dest" "$image" >"$REPORT/$(basename "$image").7z.txt" 2>&1 || true; }
extract_ext() { local image="$1" dest="$2"; mkdir -p "$dest"; debugfs -R "rdump / $dest" "$image" >"$REPORT/$(basename "$image").debugfs.txt" 2>&1 || true; }
extract_7z "$PARTS/boot-fat16.img" "$FILES/boot-fat16"
extract_ext "$PARTS/system.img" "$FILES/system"
extract_ext "$PARTS/userdata.img" "$FILES/userdata"
extract_7z "$PARTS/roms-fat32.img" "$FILES/roms-fat32"

# Android boot image: recover exact kernel and ramdisk if the legacy header parses.
abootimg -x "$PARTS/android-boot.img" >"$REPORT/abootimg.txt" 2>&1 || true
find . -maxdepth 1 -type f \( -name 'zImage' -o -name 'bootimg.cfg' -o -name 'initrd.img' \) -exec mv -f {} "$ART/android-boot/" \; 2>/dev/null || true
find "$ART/android-boot" -type f -name 'initrd*' -exec sh -c 'mkdir -p "$0/../ramdisk/unpacked"; (cd "$0/../ramdisk/unpacked" && cpio -idm --no-absolute-filenames < "$1") 2>/dev/null || true' "$ART" {} \;
find "$BASE" -type f \( -name '*.dtb' -o -name '*.dtbo' \) -print0 | while IFS= read -r -d '' f; do
  rel="$(basename "$f")"; cp -f "$f" "$ART/dtb/$rel"
  dtc -I dtb -O dts "$f" -o "$ART/dtb/$rel.dts" 2>>"$REPORT/dtc-errors.txt" || true
done

# Signature-based candidates from the raw loader region, including idbloader,
# U-Boot, resource and parameter text when their vendor format is recognisable.
binwalk "$PARTS/rockchip-reserved.img" > "$REPORT/binwalk-reserved.txt" 2>&1 || true
binwalk "$PARTS/trust-or-key.img" > "$REPORT/binwalk-trust.txt" 2>&1 || true
binwalk "$PARTS/android-boot.img" > "$REPORT/binwalk-android-boot.txt" 2>&1 || true
strings -a -n 8 "$PARTS/rockchip-reserved.img" > "$REPORT/reserved.strings.txt"
strings -a -n 8 "$PARTS/trust-or-key.img" > "$REPORT/trust.strings.txt"
grep -aobE 'FDT|RKFW|RKAF|RSCE|PARAMETER|CMDLINE|U-Boot|Android' "$PARTS/rockchip-reserved.img" > "$REPORT/reserved-signatures.txt" || true
grep -RIlE '(^|/)(dts|dtb)|rk332|rk817|usb|otg|sdio|sdmmc|gpio-keys|backlight|panel|audio' "$FILES" "$ART/ramdisk/unpacked" 2>/dev/null | sort > "$REPORT/hardware-reference-files.txt" || true
find "$BASE" -type f -printf '%s\t%p\n' | sort -nr > "$REPORT/file-inventory.tsv"
file "$PARTS"/*.img > "$REPORT/partition-formats.txt" 2>&1 || true

source_stat_after="$(stat -c '%s:%Y:%i' "$ORIGINAL")"
[ "$source_stat_before" = "$source_stat_after" ] || { echo 'FATAL: source image metadata changed' >&2; exit 99; }
sha256sum "$PARTS"/*.img > "$REPORT/partition-sha256.txt"
bash ./generate-forensics-report.sh
echo "Forensic extraction complete: $BASE"

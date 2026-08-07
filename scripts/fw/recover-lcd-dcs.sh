#!/usr/bin/env bash
# Regenerate the JD9366 8" panel DCS header from the immutable vendor image.
#
# This is the reproducible path for the display work: it re-derives the panel
# init sequence (work/jd9366_init.h -> board/ga36-mb-v1.2/jd9366_init.h) from
# the vendor firmware that shipped on the original SD media, using only the
# repo, the read-only original image, and common host tools.
#
# Chain:
#   original/test.img
#     -> dd system partition            (reverse-engineer.sh does this too)
#     -> debugfs rdump  -> SYSTEM squashfs
#     -> unsquashfs -cat -> lcd.ko / disp.ko   (vendored module files)
#     -> scripts/fw/helpers/lcd_dcs_extract.py -> jd9366_init.h
#
# The extracted lcd.ko is hash-pinned in lcd_dcs_extract.py, so a different
# firmware revision fails loudly instead of silently changing the DCS.
#
# Usage: scripts/fw/recover-lcd-dcs.sh   (idempotent; reuse cached parts)
set -euo pipefail
cd "$(dirname "$0")/../.."
source scripts/common.sh
need_original

VENDOR="$WORK/vendor-lcd"
SRC_DTS="board/ga36-mb-v1.2"
SRC_H="$WORK/jd9366_init.h"
OUT_H="$SRC_DTS/jd9366_init.h"
SYSTEM_SQ="$EXTRACT/forensics/filesystems/system/SYSTEM"
SYSTEM_IMG="$EXTRACT/forensics/partitions/system.img"
SYS_PART_SEC=237568
SYS_PART_CNT=1048576

echo "== recovering vendor LCD driver from $ORIGINAL"

# 1. SYSTEM squashfs (reverse-engineer.sh output; derive if missing)
if [ ! -s "$SYSTEM_SQ" ]; then
  echo "-- SYSTEM squashfs missing, extracting system partition"
  [ -s "$SYSTEM_IMG" ] || dd if="$ORIGINAL" of="$SYSTEM_IMG" bs=512 \
      skip="$SYS_PART_SEC" count="$SYS_PART_CNT" iflag=fullblock status=progress
  rm -rf "$EXTRACT/forensics/filesystems/system"
  mkdir -p "$EXTRACT/forensics/filesystems/system"
  debugfs -R "rdump / $EXTRACT/forensics/filesystems/system" "$SYSTEM_IMG" >/dev/null 2>&1 || true
fi
[ -s "$SYSTEM_SQ" ] || { echo "error: $SYSTEM_SQ not found after extraction" >&2; exit 1; }
echo "-- SYSTEM squashfs: $SYSTEM_SQ"

# 2. Pull the vendor modules out of the squashfs
mkdir -p "$VENDOR"
for m in lcd.ko disp.ko; do
  if [ ! -s "$VENDOR/$m" ]; then
    unsquashfs -cat "$SYSTEM_SQ" "usr/lib/modules/$m" > "$VENDOR/$m" 2>/dev/null \
      || { echo "error: usr/lib/modules/$m not in squashfs" >&2; exit 1; }
  fi
done
echo "-- vendor modules in $VENDOR"
sha256sum "$VENDOR"/*.ko

# 3. Regenerate the DCS header and check it matches the pinned firmware
echo "-- regenerating DCS header"
python3 "$ROOT/scripts/fw/helpers/lcd_dcs_extract.py" "$VENDOR/lcd.ko" > "$SRC_H"
mkdir -p "$SRC_DTS"
cp -f "$SRC_H" "$OUT_H"
echo "-- wrote $OUT_H ($(wc -l < "$OUT_H") lines)"

echo
echo "== done. DCS header committed at $OUT_H"
echo "   (edit that file, then commit; work/jd9366_init.h is a scratch copy)"

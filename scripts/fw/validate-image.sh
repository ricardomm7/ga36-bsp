#!/usr/bin/env bash
# Validate GA36-MB V1.2 final SD image structure

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$(dirname "$SCRIPT_DIR")")"

source "$ROOT_DIR/scripts/fw/env.sh"

IMG="$1"
if [[ -z "$IMG" ]]; then
    IMG="$FW_OUT/ga36-custom.img"
fi

if [[ ! -f "$IMG" ]]; then
    echo "Image not found: $IMG"
    exit 1
fi

EGON_CHECK="$ROOT_DIR/scripts/fw/helpers/egon_check.py"

echo "=== GA36-MB V1.2 Image Validation ==="
echo "Image: $IMG"
echo "Size: $(stat -c%s "$IMG") bytes"
echo ""

echo "1. MBR Partition Table:"
sfdisk -l "$IMG" | grep -A 10 "label: dos"
echo ""

echo "2. SPL eGON Header @ LBA 16 (offset 0x2000):"
xxd -l 64 -s 0x2000 "$IMG"
echo ""

echo "3. SPL Checksum Validation:"
python3 "$EGON_CHECK" "$IMG" 16
echo ""

echo "4. U-Boot Legacy Image @ LBA 80 (offset 0xA000):"
xxd -l 96 -s 0xA000 "$IMG"
echo ""

echo "5. Boot Partition @ LBA 2048 (ext4):"
# Check ext4 magic at LBA 2048 + superblock offset (1024)
xxd -l 64 -s $((2048 * 512 + 1024)) "$IMG" | head -4
echo ""

echo "6. Rootfs Partition start:"
ROOTFS_START=$((2048 + 64 * 1024 * 2))
echo "  LBA: $ROOTFS_START"
xxd -l 64 -s $((ROOTFS_START * 512 + 1024)) "$IMG" | head -4
echo ""

echo "=== Validation Complete ==="
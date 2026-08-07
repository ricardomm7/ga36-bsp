#!/usr/bin/env bash
# Assemble the GA36 bootable SD image.
#
# Layout (sunxi raw boot):
#   LBA  16 : SPL (u-boot-sunxi-with-spl.bin starts here; contains SPL and,
#                  via CONFIG_SYS_MMCSD_RAW_MODE_U_BOOT_SECTOR=80, the U-Boot
#                  binary at file offset (80-16)*512)
#   LBA 2048 : partition 1 (ext4, 64 MiB) holding /boot/{zImage,dtb,boot.scr,initramfs}
#
# Requires: mkimage (from the U-Boot build), sfdisk, mke2fs.
set -euo pipefail
. "$(cd "$(dirname "$0")" && pwd)/env.sh"

need_cmd sfdisk need_cmd mke2fs need_cmd dd need_cmd truncate
MKIMAGE="$FW_BOOT/mkimage"
[ -x "$MKIMAGE" ] || { echo "Missing $MKIMAGE (run build-uboot.sh first)" >&2; exit 2; }

BOARD_DIR="$ROOT/board/ga36-mb-v1.2"
SD="$FW_OUT/ga36-mb-v1.2.img"
STAGE="$FW_WORK/build/sd-rootfs"
PART="$FW_WORK/build/boot.ext4"
SD_SIZE=256            # MiB total image
PART_SIZE=64           # MiB for the boot partition
PART_START_LBA=2048

# 1. boot.scr from boot.cmd.
"$MKIMAGE" -A arm -O linux -T script -C none -n "GA36 boot" \
  -d "$BOARD_DIR/boot.cmd" "$FW_BOOT/boot.scr"

# 2. Stage the boot partition payload.
rm -rf "$STAGE"
mkdir -p "$STAGE/boot"
cp "$FW_BOOT/zImage" "$STAGE/boot/"
cp "$FW_BOOT/sun8i-a33-ga36-mb-v1.2.dtb" "$STAGE/boot/"
cp "$FW_BOOT/initramfs.cpio.gz" "$STAGE/boot/"
cp "$FW_BOOT/boot.scr" "$STAGE/boot/"

# 3. ext4 partition image populated directly (no loop mount needed).
rm -f "$PART"
mke2fs -F -q -t ext4 -d "$STAGE" "$PART" "${PART_SIZE}M"
e2fsck -f -y "$PART" >/dev/null 2>&1 || true

# 4. SD image: MBR first, then SPL/U-Boot, then the partition.
rm -f "$SD"
truncate -s "${SD_SIZE}M" "$SD"
sfdisk --wipe always "$SD" >/dev/null <<EOF
label: dos
label-id: 0x534f4f4c
start=${PART_START_LBA}, size=$((PART_SIZE*1024*2)), type=83, bootable
EOF
dd if="$FW_BOOT/u-boot-sunxi-with-spl.bin" of="$SD" bs=512 seek=16 conv=notrunc status=none
dd if="$PART" of="$SD" bs=512 seek=$PART_START_LBA conv=notrunc status=none

echo "OK: $SD ($(stat -c%s "$SD") bytes)"
sfdisk -d "$SD"

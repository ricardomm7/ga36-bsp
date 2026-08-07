#!/usr/bin/env bash
# Package final SD image for GA36-MB V1.2
# Layout:
#   LBA 16 (0x2000): SPL + U-Boot (u-boot-sunxi-with-spl.bin)
#   LBA 2048: boot partition (ext4, 64MB) - kernel, dtb, initramfs, boot.scr
#   LBA 133120: rootfs partition (ext4, remaining) - Buildroot rootfs

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$(dirname "$SCRIPT_DIR")")"

source "$ROOT_DIR/scripts/fw/env.sh"

SD="$FW_OUT/ga36-custom.img"
BOOT_PART="$FW_WORK/build/boot.ext4"
BOOT_STAGE="$FW_WORK/build/boot-stage"
ROOTFS_PART="$FW_WORK/buildroot/images/rootfs.ext4"
SPL_UBOOT_BIN="$FW_BOOT/u-boot-sunxi-with-spl.bin"
MKIMAGE="$FW_BOOT/mkimage"
BOARD_DIR="$ROOT_DIR/board/ga36-mb-v1.2"
EGON_CHECK="$ROOT_DIR/scripts/fw/helpers/egon_check.py"

# Partition layout
BOOT_START_LBA=2048
BOOT_SIZE_MB=64
BOOT_SIZE_SECTORS=$((BOOT_SIZE_MB * 1024 * 2))
ROOTFS_START_LBA=$((BOOT_START_LBA + BOOT_SIZE_SECTORS))

# Total image size (512MB default, can be overridden)
SD_SIZE_MB="${GA36_SD_SIZE_MB:-512}"

log_info() { echo -e "\033[0;32m[INFO]\033[0m $*"; }
log_error() { echo -e "\033[0;31m[ERROR]\033[0m $*"; }

# Verify all inputs exist (boot partition is assembled below)
for f in "$SPL_UBOOT_BIN" "$ROOTFS_PART" "$MKIMAGE" "$FW_BOOT/zImage" \
         "$FW_BOOT/sun8i-a33-ga36-mb-v1.2.dtb" "$FW_BOOT/initramfs.cpio.gz" \
         "$BOARD_DIR/boot.cmd"; do
    if [[ ! -f "$f" ]]; then
        log_error "Missing required file: $f"
        exit 1
    fi
done

log_info "Building boot.scr..."
"$MKIMAGE" -A arm -O linux -T script -C none -n "GA36 boot" \
  -d "$BOARD_DIR/boot.cmd" "$FW_BOOT/boot.scr"

log_info "Staging boot partition payload..."
rm -rf "$BOOT_STAGE"
mkdir -p "$BOOT_STAGE/boot"
cp "$FW_BOOT/zImage" "$BOOT_STAGE/boot/"
cp "$FW_BOOT/sun8i-a33-ga36-mb-v1.2.dtb" "$BOOT_STAGE/boot/"
cp "$FW_BOOT/initramfs.cpio.gz" "$BOOT_STAGE/boot/"
cp "$FW_BOOT/boot.scr" "$BOOT_STAGE/boot/"

log_info "Creating boot ext4 partition image..."
rm -f "$BOOT_PART"
mke2fs -F -q -t ext4 -d "$BOOT_STAGE" "$BOOT_PART" "${BOOT_SIZE_MB}M"
e2fsck -f -y "$BOOT_PART" >/dev/null 2>&1 || true

log_info "Creating SD image ($SD_SIZE_MB MB)..."
rm -f "$SD"
truncate -s "${SD_SIZE_MB}M" "$SD"

log_info "Writing partition table..."
sfdisk --wipe always "$SD" >/dev/null <<EOF
label: dos
label-id: 0x534f4f4c
start=$BOOT_START_LBA, size=$BOOT_SIZE_SECTORS, type=83, bootable
start=$ROOTFS_START_LBA, type=83
EOF

log_info "Writing SPL+U-Boot at LBA 16..."
dd if="$SPL_UBOOT_BIN" of="$SD" bs=512 seek=16 conv=notrunc status=none

log_info "Writing boot partition at LBA $BOOT_START_LBA..."
dd if="$BOOT_PART" of="$SD" bs=512 seek=$BOOT_START_LBA conv=notrunc status=none

log_info "Writing rootfs partition at LBA $ROOTFS_START_LBA..."
dd if="$ROOTFS_PART" of="$SD" bs=512 seek=$ROOTFS_START_LBA conv=notrunc status=none

log_info "Verifying image structure..."
sfdisk -l "$SD"

log_info "Verifying SPL eGON header at LBA 16..."
if python3 "$EGON_CHECK" "$SD" 16 2>/dev/null | grep -q "VALID"; then
    log_info "SPL checksum: VALID"
else
    log_error "SPL checksum: INVALID"
    exit 1
fi

log_info "Final image: $SD"
log_info "Size: $(stat -c%s "$SD") bytes"
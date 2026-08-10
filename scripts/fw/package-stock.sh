#!/usr/bin/env bash
# Package a Route A SD image for GA36-MB V1.2 (R36S).
#
# Boots via the STOCK sunxi bootloader. The first 128 MiB of the original
# factory image are preserved verbatim (boot0, boot1, the sunxi MBR, the env
# partition and the stock "boot" partition) and only the kernel inside that
# boot partition is replaced with our Android boot image. The space after
# 128 MiB is ours.
#
# Layout:
#   sector      0 : standard MBR (single ext4 partition starting at 128 MiB)
#   sectors 1..262143 : copied from original/test.img (skip sector 0 = our MBR)
#                       boot0@16, boot1@38192, sunxi MBR@40960, env@139264
#   sector 172032 : android_boot.img (zImage + appended DTB, empty ramdisk)
#   sector 262144 : ext4 rootfs (busybox, init=/sbin/init), labelled "linux"
#
# Kernel cmdline is forced at build time (CONFIG_CMDLINE_FORCE):
#   root=/dev/mmcblk0p1 rootfstype=ext4 rootwait rw init=/sbin/init ...
#
# Requires: original/test.img (stock dump), android_boot.img (build-linux.sh),
# busybox initramfs staging (build-initramfs.sh, run automatically).
set -euo pipefail
. "$(cd "$(dirname "$0")" && pwd)/env.sh"

need_cmd dd need_cmd truncate need_cmd sfdisk need_cmd mke2fs need_cmd e2fsck need_cmd python3

BOOT_IMG="$FW_BOOT/android_boot.img"
EGON_CHECK="$ROOT/scripts/fw/helpers/egon_check.py"

# Geometry (sectors of 512 bytes)
BOOT0_LBA=16
BOOT_IMG_LBA=172032
COPY_END_LBA=262143          # 128 MiB - 1 sector
ROOTFS_LBA=262144            # 128 MiB
SD_SIZE_MB="${GA36_SD_SIZE_MB:-1024}"

SD="$FW_OUT/ga36-stockboot.img"
BOOTCHAIN="$ROOT/bootloader/ga36-stock-bootchain-128m.bin.gz"

for f in "$BOOT_IMG" "$BOOTCHAIN"; do
  [ -f "$f" ] || { echo "ERROR: missing $f" >&2; exit 2; }
done

log() { echo -e "\033[0;32m[INFO]\033[0m $*"; }

# 1. Rootfs: build the busybox staging if needed, then pack it as ext4.
ROOTFS_DIR="$FW_WORK/build/initramfs"
if [ ! -d "$ROOTFS_DIR" ]; then
  log "Rootfs staging missing; running build-initramfs.sh"
  "$(cd "$(dirname "$0")" && pwd)/build-initramfs.sh"
fi
ROOTFS_PART="$FW_WORK/build/rootfs.ext4"
ROOTFS_SIZE_MB=$((SD_SIZE_MB - 128))      # partition spans 128 MiB -> end
log "Creating ext4 rootfs (${ROOTFS_SIZE_MB} MiB) from busybox staging"
rm -f "$ROOTFS_PART"
mke2fs -F -q -t ext4 -L linux -d "$ROOTFS_DIR" "$ROOTFS_PART" "${ROOTFS_SIZE_MB}M"
e2fsck -f -y "$ROOTFS_PART" >/dev/null 2>&1 || true

# 2. Assemble the image.
log "Creating $SD (${SD_SIZE_MB} MiB)"
rm -f "$SD"
truncate -s "${SD_SIZE_MB}M" "$SD"
sfdisk --wipe always "$SD" >/dev/null <<EOF
label: dos
label-id: 0x534f4f4c
start=$ROOTFS_LBA, type=83, bootable
EOF



log "Copying stock boot chain (sectors 1..$COPY_END_LBA from $BOOTCHAIN)"
zcat "$BOOTCHAIN" | dd of="$SD" bs=512 seek=1 count=$COPY_END_LBA \
   conv=notrunc status=none

log "Writing android boot image at sector $BOOT_IMG_LBA"
dd if="$BOOT_IMG" of="$SD" bs=512 seek=$BOOT_IMG_LBA conv=notrunc status=none

log "Writing rootfs at sector $ROOTFS_LBA"
dd if="$ROOTFS_PART" of="$SD" bs=512 seek=$ROOTFS_LBA conv=notrunc status=none
sync

# 3. Verification.
log "Partition table:"
sfdisk -l "$SD"

log "Stock boot0 checksum @LBA $BOOT0_LBA:"
python3 "$EGON_CHECK" "$SD" "$BOOT0_LBA" | grep -o 'VALID\|INVALID <<<<<<' \
  | head -1 || { echo "ERROR: boot0 eGON check failed" >&2; exit 1; }

log "Android boot image magic @LBA $BOOT_IMG_LBA:"
python3 - "$SD" "$BOOT_IMG_LBA" <<'EOF'
import sys
with open(sys.argv[1], 'rb') as f:
    f.seek(int(sys.argv[2]) * 512)
    magic = f.read(8)
assert magic == b"ANDROID!", f"bad magic at LBA {sys.argv[2]}: {magic!r}"
print("ANDROID! OK")
EOF

log "MBR signature and rootfs partition entry:"
python3 - "$SD" "$ROOTFS_LBA" <<'EOF'
import struct, sys
with open(sys.argv[1], 'rb') as f:
    mbr = f.read(512)
sig = struct.unpack_from('<H', mbr, 510)[0]
assert sig == 0xaa55, f"bad MBR signature 0x{sig:04x}"
pt = struct.unpack_from('<16sIII', mbr, 446)[0]  # 1st partition entry
start = struct.unpack_from('<I', mbr, 446 + 8)[0]
print(f"MBR 0x55aa OK, partition 1 starts at sector {start} (expect {sys.argv[2]})")
assert start == int(sys.argv[2]), "partition start mismatch"
EOF

log "Final image: $SD ($(stat -c%s "$SD") bytes)"

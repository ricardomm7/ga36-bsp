#!/usr/bin/env bash
# Package a Route A SD image for GA36-MB V1.2 (R36S).
#
# Boots via the STOCK sunxi bootloader. The first 128 MiB of the original
# factory image are preserved verbatim (boot0, boot1, the sunxi MBR, the env
# partition and the stock "boot" partition) and only the kernel inside that
# boot partition is replaced with our Android boot image. The space after
# 128 MiB is ours.
#
# Layout (this unit's validated layout — see docs/STATUS.md):
#   sector 0       : FACTORY DOS MBR (bootloader/ga36-stock-mbr.bin, byte-exact)
#   sectors 1..262143 : copied from the factory bootchain (skip sector 0)
#                       boot0@16, boot1@38192, sunxi MBR@40960, env@139264,
#                       EBRs@1/2/4/8, boot.img@172032 (overwritten below)
#   sector 172032  : android_boot.img (zImage + appended DTB, empty ramdisk)
#   sector 1286144 : p8 (EBR storage slot, type 0x83) — untouched factory space
#   sector 3383336 : ext4 rootfs inside MBR P1 (the factory "UDISK" slot),
#                    so the mainline kernel sees it as /dev/mmcblk0p1
#                    (the forced cmdline root= already points there)
#
# WHY the factory MBR? On THIS unit boot1 reads the DOS MBR: with a plain
# sfdisk MBR (single partition @262144) the board stayed stuck on the splash
# even with the STOCK kernel. The byte-exact factory MBR is the only MBR
# proven to reach the kernel. The factory EBR chain (p5 env, p6 boot, p8
# storage) is preserved verbatim; there is no p7 in the EBR — the factory's
# "p7 rootfs" exists only in the vendor `partitions=` cmdline, which the
# mainline kernel does not support.
#
# Kernel cmdline is forced at build time (CONFIG_CMDLINE_FORCE):
#   root=/dev/mmcblk0p1 rootfstype=ext4 rootwait rw init=/sbin/init ...
#
# Requires: bootloader/ga36-stock-bootchain-128m.bin.gz + ga36-stock-mbr.bin
# (committed), android_boot.img (build-linux.sh), busybox initramfs staging
# (build-initramfs.sh, run automatically).
set -euo pipefail
. "$(cd "$(dirname "$0")" && pwd)/env.sh"

need_cmd dd need_cmd truncate need_cmd mke2fs need_cmd e2fsck need_cmd python3

BOOT_IMG="$FW_BOOT/android_boot.img"
EGON_CHECK="$ROOT/scripts/fw/helpers/egon_check.py"

# Geometry (sectors of 512 bytes)
BOOT0_LBA=16
BOOT_IMG_LBA=172032
COPY_END_LBA=262143          # 128 MiB - 1 sector
P8_LBA=1286144               # EBR-declared storage slot (left untouched)
ROOTFS_LBA=3383336           # MBR P1 (factory "UDISK" slot) -> /dev/mmcblk0p1
SD_SIZE_MB="${GA36_SD_SIZE_MB:-2048}"   # must be > ROOTFS_LBA offset (~1652 MiB); rootfs is resize2fs-friendly
ROOTFS_OFFSET_MB=$((ROOTFS_LBA * 512 / 1048576))
ROOTFS_SIZE_MB=$((SD_SIZE_MB - ROOTFS_OFFSET_MB))

SD="$FW_OUT/ga36-stockboot.img"
MBR_SRC="$ROOT/bootloader/ga36-stock-mbr.bin"
BOOTCHAIN_SRC="$ROOT/bootloader/ga36-stock-bootchain-128m.bin.gz"
BOOTCHAIN="$FW_WORK/build/bootchain-mod.bin.gz"
mkdir -p "$FW_WORK/build"
cp "$BOOTCHAIN_SRC" "$BOOTCHAIN"

if [ -f "$ROOT/bmps/splash.bmp" ]; then
    echo -e "\033[0;32m[INFO]\033[0m Injecting custom splash from bmps/splash.bmp"
    python3 "$ROOT/scripts/fw/inject_splash.py" "$BOOTCHAIN" "$ROOT/bmps/splash.bmp"
fi
for f in "$BOOT_IMG" "$BOOTCHAIN" "$MBR_SRC"; do
  [ -f "$f" ] || { echo "ERROR: missing $f" >&2; exit 2; }
done

log() { echo -e "\033[0;32m[INFO]\033[0m $*"; }

# 1. Rootfs: build the busybox staging if needed, then pack it as ext4.
# The ext4 is written at MBR P1 (sector ROOTFS_LBA); its size is capped at
# P1's declared size (26,965,975 sectors ≈ 12.86 GiB) but defaults to the
# remaining image space, which is plenty for the static BusyBox rootfs.
ROOTFS_DIR="$FW_WORK/build/initramfs"
if [ ! -d "$ROOTFS_DIR" ]; then
  log "Rootfs staging missing; running build-initramfs.sh"
  "$(cd "$(dirname "$0")" && pwd)/build-initramfs.sh"
fi
ROOTFS_PART="$FW_WORK/build/rootfs.ext4"
log "Creating ext4 rootfs (${ROOTFS_SIZE_MB} MiB) from busybox staging"
rm -f "$ROOTFS_PART"
mke2fs -F -q -t ext4 -L linux -d "$ROOTFS_DIR" "$ROOTFS_PART" "${ROOTFS_SIZE_MB}M"
e2fsck -f -y "$ROOTFS_PART" >/dev/null 2>&1 || true

# 2. Assemble the image.
log "Creating $SD (${SD_SIZE_MB} MiB)"
rm -f "$SD"
truncate -s "${SD_SIZE_MB}M" "$SD"

log "Writing factory DOS MBR (sector 0)"
dd if="$MBR_SRC" of="$SD" bs=512 count=1 conv=notrunc status=none

log "Copying stock boot chain (sectors 1..$COPY_END_LBA from $BOOTCHAIN)"
zcat "$BOOTCHAIN" | dd of="$SD" bs=512 seek=1 count=$COPY_END_LBA \
   conv=notrunc status=none

log "Writing android boot image at sector $BOOT_IMG_LBA"
dd if="$BOOT_IMG" of="$SD" bs=512 seek=$BOOT_IMG_LBA conv=notrunc status=none

log "Writing rootfs at sector $ROOTFS_LBA (MBR P1, /dev/mmcblk0p1)"
dd if="$ROOTFS_PART" of="$SD" bs=512 seek=$ROOTFS_LBA conv=notrunc status=none
sync

# 3. Verification.
log "Partition table (factory MBR, byte-exact):"
python3 - "$SD" "$MBR_SRC" <<'EOF'
import sys
with open(sys.argv[1], 'rb') as f:
    img = f.read(512)
with open(sys.argv[2], 'rb') as f:
    mbr = f.read(512)
assert img == mbr, "MBR does not match factory ga36-stock-mbr.bin"
print("MBR byte-identical to factory: OK")
EOF

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

log "MBR signature + rootfs partition entry (P1 @$ROOTFS_LBA):"
python3 - "$SD" "$ROOTFS_LBA" <<'EOF'
import struct, sys
with open(sys.argv[1], 'rb') as f:
    mbr = f.read(512)
sig = struct.unpack_from('<H', mbr, 510)[0]
assert sig == 0xaa55, f"bad MBR signature 0x{sig:04x}"
pt = struct.unpack_from('<16sIII', mbr, 446)[0]  # 1st partition entry
start = struct.unpack_from('<I', mbr, 446 + 8)[0]
print(f"MBR 0x55aa OK, P1 (rootfs) starts at sector {start} (expect {sys.argv[2]})")
assert start == int(sys.argv[2]), "P1 start mismatch"
EOF

log "Rootfs ext4 superblock @$ROOTFS_LBA:"
python3 - "$SD" "$ROOTFS_LBA" <<'EOF'
import struct, sys
with open(sys.argv[1], 'rb') as f:
    f.seek(int(sys.argv[2]) * 512 + 1024 + 0x38)
    magic = struct.unpack('<H', f.read(2))[0]
assert magic == 0xef53, f"bad ext4 magic 0x{magic:04x}"
print("ext4 0xef53 OK")
EOF

log "Final image: $SD ($(stat -c%s "$SD") bytes)"

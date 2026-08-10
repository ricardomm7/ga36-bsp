#!/usr/bin/env bash
# Build a static-BusyBox initramfs (init + serial console getty on ttyS2).
set -euo pipefail
. "$(cd "$(dirname "$0")" && pwd)/env.sh"

need_cmd make need_cmd tar need_cmd cp need_cmd cpio need_cmd gzip

BB_SRC="$FW_SRC/busybox-$BUSYBOX_VERSION"
ROOTFS="$FW_WORK/build/initramfs"

# 1. Extract source if needed.
if [ ! -d "$BB_SRC" ]; then
  if [ ! -f "$FW_DL/busybox-$BUSYBOX_VERSION.tar.bz2" ]; then
    echo "Downloading BusyBox $BUSYBOX_VERSION" >&2
    curl -L --retry 3 -o "$FW_DL/busybox-$BUSYBOX_VERSION.tar.bz2" \
      "https://busybox.net/downloads/busybox-$BUSYBOX_VERSION.tar.bz2"
  fi
  echo "Extracting BusyBox $BUSYBOX_VERSION" >&2
  mkdir -p "$FW_SRC"
  tar -C "$FW_SRC" -xjf "$FW_DL/busybox-$BUSYBOX_VERSION.tar.bz2"
fi

# 2. Configure + build static busybox (host gcc, no cross — it's a userspace
#    binary for the A33, but building it with the host gcc is wrong for ARM!
#    BusyBox IS cross-compiled with the same toolchain as the kernel.)
CROSS="$(cross_prefix)"
echo "CROSS_COMPILE=$CROSS" >&2
export CROSS_COMPILE="$CROSS"
export ARCH=arm
make -C "$BB_SRC" defconfig >/dev/null
sed -i \
  -e 's/^# CONFIG_STATIC is not set/CONFIG_STATIC=y/' \
  -e 's/^# CONFIG_FEATURE_INSTALLER is not set/CONFIG_FEATURE_INSTALLER=y/' \
  -e 's/^# CONFIG_INSTALL_APPLET_SYMLINKS is not set/CONFIG_INSTALL_APPLET_SYMLINKS=y/' \
  "$BB_SRC/.config"
make -C "$BB_SRC" oldconfig < /dev/null >/dev/null
make -C "$BB_SRC" -j"$(nproc)" >/dev/null

# 3. Install into the rootfs staging dir.
rm -rf "$ROOTFS"
mkdir -p "$ROOTFS"
make -C "$BB_SRC" CONFIG_PREFIX="$ROOTFS" install >/dev/null

# 4. Init scripts and base config.
cat > "$ROOTFS/init" <<'EOF'
#!/bin/sh
# GA36 initramfs init
mount -t devtmpfs devtmpfs /dev
mkdir -p /proc /sys /tmp /run
mount -t proc proc /proc
mount -t sysfs sysfs /sys
exec /sbin/init
EOF
chmod 755 "$ROOTFS/init"

mkdir -p "$ROOTFS/etc/init.d" "$ROOTFS/dev" "$ROOTFS/proc" \
         "$ROOTFS/sys" "$ROOTFS/tmp" "$ROOTFS/run" "$ROOTFS/mnt"

cat > "$ROOTFS/etc/inittab" <<'EOF'
::sysinit:/etc/init.d/rcS
ttyS2::respawn:/sbin/getty -L ttyS2 115200 vt100
tty1::respawn:-/bin/sh
::ctrlaltdel:/sbin/reboot
::shutdown:/bin/umount -a -r
EOF

cat > "$ROOTFS/etc/init.d/rcS" <<'EOF'
#!/bin/sh
mkdir -p /dev/pts
mount -t devpts devpts /dev/pts
echo "GA36 initramfs: system ready"

# Blink the backlight to prove we reached userspace!
BL=/sys/class/backlight/backlight/brightness
if [ -f "$BL" ]; then
    while true; do
        echo 0 > "$BL"
        sleep 1
        echo 255 > "$BL"
        sleep 1
    done
fi
EOF
chmod 755 "$ROOTFS/etc/init.d/rcS"

cat > "$ROOTFS/etc/fstab" <<'EOF'
/dev/mmcblk0p1  /mnt  ext4  defaults  0  0
EOF

echo 'root:x:0:0:root:/root:/bin/sh' > "$ROOTFS/etc/passwd"
echo 'root::0:' > "$ROOTFS/etc/group"

# 5. Package as cpio.gz for the kernel initramfs.
( cd "$ROOTFS" && find . | cpio -o -H newc 2>/dev/null | gzip -9 ) \
  > "$FW_BOOT/initramfs.cpio.gz"

echo "OK: $FW_BOOT/initramfs.cpio.gz ($(stat -c%s "$FW_BOOT/initramfs.cpio.gz") bytes)"

#!/usr/bin/env bash
# Build U-Boot 2025.07 for GA36-MB V1.2 (A33).
set -euo pipefail
. "$(cd "$(dirname "$0")" && pwd)/env.sh"

need_cmd make need_cmd tar need_cmd cp need_cmd sed need_cmd patch

UB_SRC="$FW_SRC/u-boot-$UBOOT_VERSION"
UB_OBJ="$FW_WORK/build/uboot"

# 1. Extract source if needed.
if [ ! -d "$UB_SRC" ]; then
  if [ ! -f "$FW_DL/u-boot-$UBOOT_VERSION.tar.bz2" ]; then
    echo "Downloading U-Boot $UBOOT_VERSION" >&2
    curl -L --retry 3 -o "$FW_DL/u-boot-$UBOOT_VERSION.tar.bz2" \
      "https://ftp.denx.de/pub/u-boot/u-boot-$UBOOT_VERSION.tar.bz2"
  fi
  echo "Extracting U-Boot $UBOOT_VERSION" >&2
  mkdir -p "$FW_SRC"
  tar -C "$FW_SRC" -xjf "$FW_DL/u-boot-$UBOOT_VERSION.tar.bz2"
fi

# 2. Install board files into the source tree (idempotent).
cp "$ROOT/uboot/dts/$BOARD_DTS" "$UB_SRC/arch/arm/dts/"
cp "$ROOT/uboot/configs/$UBOOT_DEFCONFIG" "$UB_SRC/configs/"
if ! grep -q 'sun8i-a33-ga36-mb-v1.2.dtb' "$UB_SRC/arch/arm/dts/Makefile"; then
  sed -i '/dtb-$(CONFIG_MACH_SUN8I_A33) += sun8i-a33-olinuxino.dtb/a dtb-$(CONFIG_MACH_SUN8I_A33) += sun8i-a33-ga36-mb-v1.2.dtb' \
    "$UB_SRC/arch/arm/dts/Makefile"
fi

# 3. Apply local patches (idempotent).
PATCH_DIR="$ROOT/patches/uboot"
if [ -d "$PATCH_DIR" ]; then
  for p in "$PATCH_DIR"/*.patch; do
    [ -e "$p" ] || continue
    if patch -p1 --dry-run --forward -d "$UB_SRC" < "$p" >/dev/null 2>&1; then
      echo "Applying $(basename "$p")" >&2
      patch -p1 --forward -d "$UB_SRC" < "$p"
    else
      echo "Skipping $(basename "$p") (already applied)" >&2
    fi
  done
fi

# 4. Build.
CROSS="$(cross_prefix)"
echo "CROSS_COMPILE=$CROSS" >&2
export CROSS_COMPILE="$CROSS"
export ARCH=arm

make -C "$UB_SRC" O="$UB_OBJ" ga36_mb_v1_2_defconfig
make -C "$UB_SRC" O="$UB_OBJ" -j"$(nproc)"

# 5. Collect artifacts.
cp "$UB_OBJ/u-boot-sunxi-with-spl.bin" "$FW_BOOT/u-boot-sunxi-with-spl.bin"
cp "$UB_OBJ/tools/mkimage" "$FW_BOOT/mkimage"
cp "$UB_OBJ/u-boot.bin" "$FW_BOOT/u-boot.bin"
cp "$UB_OBJ/u-boot.dtb" "$FW_BOOT/u-boot.dtb"

echo "OK: $FW_BOOT/u-boot-sunxi-with-spl.bin ($(stat -c%s "$FW_BOOT/u-boot-sunxi-with-spl.bin") bytes)"

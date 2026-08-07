#!/usr/bin/env bash
# Build Linux 6.12 for GA36-MB V1.2 (A33): zImage + board DTB.
set -euo pipefail
. "$(cd "$(dirname "$0")" && pwd)/env.sh"

need_cmd make need_cmd tar need_cmd cp need_cmd sed need_cmd nproc

KS_SRC="$FW_SRC/linux-$LINUX_VERSION"
KS_OBJ="$FW_WORK/build/linux"
BOARD_DIR="$ROOT/board/ga36-mb-v1.2"
KS_CONFIG="$BOARD_DIR/linux-ga36.config"
KS_FRAG="$BOARD_DIR/kernel-ga36.config.fragment"

# 1. Extract source if needed.
if [ ! -d "$KS_SRC" ]; then
  if [ ! -f "$FW_DL/linux-$LINUX_VERSION.tar.xz" ]; then
    echo "Downloading Linux $LINUX_VERSION" >&2
    curl -L --retry 3 -o "$FW_DL/linux-$LINUX_VERSION.tar.xz" \
      "https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-$LINUX_VERSION.tar.xz"
  fi
  echo "Extracting Linux $LINUX_VERSION" >&2
  mkdir -p "$FW_SRC"
  tar -C "$FW_SRC" -xJf "$FW_DL/linux-$LINUX_VERSION.tar.xz"
fi

# 2. Install board files into the source tree (idempotent).
DST_DTS="$KS_SRC/arch/arm/boot/dts/allwinner"
cp "$ROOT/dts/$BOARD_DTS" "$DST_DTS/"
if ! grep -q 'sun8i-a33-ga36-mb-v1.2.dtb' "$DST_DTS/Makefile"; then
  awk -v t='\t' '/sun8i-a33-sinlinx-sina33.dtb/{print; print t "sun8i-a33-ga36-mb-v1.2.dtb \\"; next} {print}' \
    "$DST_DTS/Makefile" > "$DST_DTS/Makefile.new" && mv "$DST_DTS/Makefile.new" "$DST_DTS/Makefile"
fi

CROSS="$(cross_prefix)"
echo "CROSS_COMPILE=$CROSS" >&2
export CROSS_COMPILE="$CROSS"
export ARCH=arm
export KBUILD_BUILD_USER=ga36
export KBUILD_BUILD_HOST=ga36fw

# 3. Config. Prefer the canonicalized config stored in the repo; generate it
#    once from sunxi_defconfig + fragment if absent.
mkdir -p "$KS_OBJ"
if [ -f "$KS_CONFIG" ]; then
  cp "$KS_CONFIG" "$KS_OBJ/.config"
  make -C "$KS_SRC" O="$KS_OBJ" olddefconfig >/dev/null
else
  make -C "$KS_SRC" O="$KS_OBJ" sunxi_defconfig >/dev/null
  ( cd "$KS_SRC" \
    && "$KS_SRC/scripts/kconfig/merge_config.sh" -O "$KS_OBJ" \
      "$KS_SRC/arch/arm/configs/sunxi_defconfig" "$KS_FRAG" >/dev/null )
  make -C "$KS_SRC" O="$KS_OBJ" savedefconfig >/dev/null
  cp "$KS_OBJ/defconfig" "$KS_CONFIG"
  echo "Saved kernel config to $KS_CONFIG" >&2
fi

# 4. Build kernel image + board dtb.
make -C "$KS_SRC" O="$KS_OBJ" -j"$(nproc)" zImage
make -C "$KS_SRC" O="$KS_OBJ" -j"$(nproc)" dtbs

# 5. Collect artifacts.
cp "$KS_OBJ/arch/arm/boot/zImage" "$FW_BOOT/zImage"
cp "$KS_OBJ/arch/arm/boot/dts/allwinner/sun8i-a33-ga36-mb-v1.2.dtb" \
   "$FW_BOOT/sun8i-a33-ga36-mb-v1.2.dtb"

echo "OK: $FW_BOOT/zImage ($(stat -c%s "$FW_BOOT/zImage") bytes), $FW_BOOT/sun8i-a33-ga36-mb-v1.2.dtb ($(stat -c%s "$FW_BOOT/sun8i-a33-ga36-mb-v1.2.dtb") bytes)"

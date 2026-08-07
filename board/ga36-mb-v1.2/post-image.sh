#!/usr/bin/env bash
set -euo pipefail
out="$1"
# BR2_EXTERNAL_GA36_PATH points to buildroot/ directory, files are in parent
PROJECT_ROOT="$(dirname "$BR2_EXTERNAL_GA36_PATH")"
# Only copy Buildroot artifacts (rootfs)
mkdir -p "$out/images"
cp -f "$BINARIES_DIR/rootfs.ext4" "$out/images/"
# Note: Kernel, DTB, initramfs, U-Boot built separately
# Final SD image assembly done by scripts/fw/package-final.sh

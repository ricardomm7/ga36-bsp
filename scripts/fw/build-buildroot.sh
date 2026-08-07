#!/usr/bin/env bash
# Build Buildroot rootfs for GA36-MB V1.2

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$(dirname "$SCRIPT_DIR")")"

source "$ROOT_DIR/scripts/fw/env.sh"

log_info() { echo -e "\033[0;32m[INFO]\033[0m $*"; }
log_error() { echo -e "\033[0;31m[ERROR]\033[0m $*"; }

BR2_EXTERNAL_GA36_PATH="$ROOT_DIR/buildroot"
BR2_DEFCONFIG="ga36-mb-v1.2_defconfig"
BUILDROOT_SRC="$FW_SRC/buildroot-$BUILDROOT_VERSION"
BUILDROOT_DIR="$FW_WORK/buildroot"

# Toolchain
CROSS_COMPILE="$(cross_prefix)"
export CROSS_COMPILE
export ARCH=arm

# 1. Download Buildroot source if needed (cache-aware: never fetch twice)
if [[ ! -d "$BUILDROOT_SRC" ]]; then
    mkdir -p "$FW_SRC"
    if [[ ! -f "$FW_DL/buildroot-$BUILDROOT_VERSION.tar.gz" ]]; then
        log_info "Downloading Buildroot $BUILDROOT_VERSION..."
        curl -L --retry 3 -o "$FW_DL/buildroot-$BUILDROOT_VERSION.tar.gz" \
            "https://buildroot.org/downloads/buildroot-$BUILDROOT_VERSION.tar.gz"
    fi
    tar -C "$FW_SRC" -xzf "$FW_DL/buildroot-$BUILDROOT_VERSION.tar.gz"
fi

# 2. Configure Buildroot with external tree
mkdir -p "$BUILDROOT_DIR"

if [[ ! -f "$BUILDROOT_DIR/.config" ]]; then
    log_info "Configuring Buildroot with $BR2_DEFCONFIG (external tree: $BR2_EXTERNAL_GA36_PATH)..."
    make -C "$BUILDROOT_SRC" O="$BUILDROOT_DIR" BR2_EXTERNAL="$BR2_EXTERNAL_GA36_PATH" "$BR2_DEFCONFIG"
fi

# 3. Build
log_info "Building Buildroot..."
make -C "$BUILDROOT_SRC" O="$BUILDROOT_DIR" -j"$(nproc)"

log_info "Buildroot build complete"
log_info "Rootfs: $BUILDROOT_DIR/images/rootfs.ext4"
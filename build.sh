#!/usr/bin/env bash
# GA36-MB V1.2 (R36S) — Complete firmware build script
# Single entry point. Produces BOTH images from one ./build.sh:
#   output/firmware/ga36-custom.img      (Route B: mainline SPL+U-Boot)
#   output/firmware/ga36-stockboot.img   (Route A: stock bootloader + our kernel)
# Allwinner A33 sun8i, U-Boot 2025.07, Linux 6.12, Buildroot.
#
# Usage: ./build.sh [--clean]
#   --clean: clean all build directories before building
#
# Route A additionally needs the factory dump original/test.img (gitignored —
# it is YOUR card's acquisition, see original/README.md). If it is missing the
# stock image is skipped with a warning; ga36-custom.img is still built.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$SCRIPT_DIR"

CLEAN_BUILD=false
if [[ "${1:-}" == "--clean" ]]; then
    CLEAN_BUILD=true
fi

# Source environment
source "$ROOT_DIR/scripts/fw/env.sh"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

log_info() { echo -e "${GREEN}[INFO]${NC} $*"; }
log_warn() { echo -e "${YELLOW}[WARN]${NC} $*"; }
log_error() { echo -e "${RED}[ERROR]${NC} $*"; }

main() {
    log_info "Starting GA36-MB V1.2 firmware build"
    log_info "Target: Allwinner A33 (sun8i)"
    log_info "U-Boot: 2025.07, Linux: 6.12.41, Buildroot: 2025.02.1"

    if [[ "$CLEAN_BUILD" == "true" ]]; then
        log_info "Cleaning build directories..."
        rm -rf "$FW_WORK/build"
        rm -rf "$FW_OUT"
        mkdir -p "$FW_OUT/boot"
    fi

    # Build order: U-Boot -> Linux -> Initramfs -> Buildroot -> Package SD
    log_info "=== Step 1/6: Building U-Boot 2025.07 ==="
    "$ROOT_DIR/scripts/fw/build-uboot.sh"

    log_info "=== Step 2/6: Building Linux 6.12.41 ==="
    "$ROOT_DIR/scripts/fw/build-linux.sh"

    log_info "=== Step 3/6: Building initramfs ==="
    "$ROOT_DIR/scripts/fw/build-initramfs.sh"

    log_info "=== Step 4/6: Building Buildroot rootfs ==="
    "$ROOT_DIR/scripts/fw/build-buildroot.sh"

    log_info "=== Step 5/6: Packaging final SD image ==="
    "$ROOT_DIR/scripts/fw/package-final.sh"

    log_info "=== Step 6/6: Packaging stock-bootloader image (Route A) ==="
    "$ROOT_DIR/scripts/fw/package-stock.sh"

    log_info "Build complete!"
    log_info "Route B (mainline U-Boot): $FW_OUT/ga36-custom.img"
    log_info "Route A (stock bootloader + our kernel): $FW_OUT/ga36-stockboot.img"
    log_info "Flash with: sudo dd if=$FW_OUT/ga36-custom.img of=/dev/sdX bs=1M status=progress"
}

main "$@"
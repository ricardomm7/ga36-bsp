#!/usr/bin/env bash
# GA36-MB V1.2 (R36S) — Complete firmware build script
# Single entry point. Produces ONE image:
#   output/firmware/ga36-stockboot.img  (stock bootloader + our kernel)
#
# The stock bootloader (boot0/boot1 from the factory card) is preserved in the
# first 128 MiB of the image; only the kernel inside the stock "boot" partition
# is replaced with our Android boot image (Linux 6.12 + JD9366 panel driver).
# See docs/BUILD.md for the full layout.
#
# Usage: ./build.sh [--clean]
#   --clean: clean all build directories before building
#
# The stock bootchain (boot0/boot1 + logo from the factory card) is already
# committed under bootloader/ga36-stock-bootchain-128m.bin.gz, so the build is
# fully self-contained.
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
    log_info "Linux: 6.12.41, BusyBox: 1.36.1"

    if [[ "$CLEAN_BUILD" == "true" ]]; then
        log_info "Cleaning build directories..."
        rm -rf "$FW_WORK/build"
        rm -rf "$FW_OUT"
        mkdir -p "$FW_OUT/boot"
    fi

    log_info "=== Step 1/3: Building Linux 6.12.41 ==="
    "$ROOT_DIR/scripts/fw/build-linux.sh"

    log_info "=== Step 2/3: Building initramfs ==="
    "$ROOT_DIR/scripts/fw/build-initramfs.sh"

    log_info "=== Step 3/3: Packaging stock-bootloader image ==="
    "$ROOT_DIR/scripts/fw/package-stock.sh"

    log_info "Build complete!"
    log_info "Image: $FW_OUT/ga36-stockboot.img"
    log_info "Flash with: sudo dd if=$FW_OUT/ga36-stockboot.img of=/dev/sdX bs=4M status=progress"
}

main "$@"

# vi: set sw=4 ts=4 noet:

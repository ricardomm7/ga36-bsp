#!/usr/bin/env bash
# GA36-MB V1.2 (R36S) — Bootstrap script
# Downloads all external sources and prepares the build environment.
# Run ONCE after cloning the repository.
#
# Usage: ./bootstrap.sh [--install-deps]

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$SCRIPT_DIR"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

log_info() { echo -e "${GREEN}[INFO]${NC} $*"; }
log_warn() { echo -e "${YELLOW}[WARN]${NC} $*"; }
log_error() { echo -e "${RED}[ERROR]${NC} $*"; }

# Source versions (must match scripts/fw/env.sh)
LINUX_VERSION="6.12.41"
BUSYBOX_VERSION="1.36.1"
TOOLCHAIN_TARBALL="armv7-eabihf--glibc--stable-2025.08-1.tar.xz"
TOOLCHAIN_URL="https://toolchains.bootlin.com/downloads/releases/toolchains/armv7-eabihf/tarballs/$TOOLCHAIN_TARBALL"

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORK_DIR="$ROOT_DIR/work"
DL_DIR="$WORK_DIR/dl"
SRC_DIR="$WORK_DIR/src"
HOST_DIR="$WORK_DIR/host"
TOOLCHAIN_DIR="$WORK_DIR/toolchain"

mkdir -p "$WORK_DIR/dl" "$WORK_DIR/src" "$WORK_DIR/host" "$WORK_DIR/toolchain"

need_cmd() { command -v "$1" >/dev/null 2>&1 || { log_error "Missing system dependency: $1"; exit 2; }; }

check_system_deps() {
    log_info "Checking system dependencies..."
    
    # Build tools
    for cmd in git make gcc g++ curl tar xz bzip2 patch sed awk grep find cpio gzip python3 bison flex unzip; do
        need_cmd "$cmd"
    done
    
    # Check for ARM cross-compilation libraries (optional but recommended)
    if command -v dpkg >/dev/null 2>&1; then
        if ! dpkg -l | grep -q "libc6-dev-armhf-cross"; then
            log_warn "libc6-dev-armhf-cross not installed."
            log_warn "  Recommended: sudo apt-get install libc6-dev-armhf-cross"
        fi
    elif command -v rpm >/dev/null 2>&1; then
        if ! rpm -q glibc-static-armhf-cross >/dev/null 2>&1; then
            log_warn "glibc-static-armhf-cross not installed."
            log_warn "  Recommended: sudo dnf install glibc-static-armhf-cross"
        fi
    fi
    
    log_info "System dependencies OK"
}

download_file() {
    local url="$1"
    local dest="$2"
    if [[ -f "$dest" ]]; then
        log_info "Already downloaded: $(basename "$dest")"
        return 0
    fi
    log_info "Downloading $(basename "$dest")..."
    curl -L --retry 3 -o "$dest" "$url"
}

extract_archive() {
    local archive="$1"
    local dest_dir="$2"
    log_info "Extracting $(basename "$archive")..."
    mkdir -p "$dest_dir"
    case "$archive" in
        *.tar.xz) tar -C "$dest_dir" -xJf "$1" ;;
        *.tar.bz2) tar -C "$dest_dir" -xjf "$1" ;;
        *.tar.gz|*.tgz) tar -C "$dest_dir" -xzf "$1" ;;
        *.zip) unzip -q -o "$1" -d "$dest_dir" ;;
        *) log_error "Unknown archive format: $1"; exit 1 ;;
    esac
}

fix_toolchain_layout() {
    # Bootlin toolchain extracts into a subdirectory; flatten it
    local tc_root="$WORK_DIR/toolchain"
    local subdir=$(find "$tc_root" -mindepth 1 -maxdepth 1 -type d | head -1)
    if [[ -n "$subdir" && "$subdir" != "$tc_root" ]]; then
        log_info "Flattening toolchain layout..."
        mv "$subdir"/* "$tc_root"/ 2>/dev/null || true
        rmdir "$subdir" 2>/dev/null || true
    fi
}

main() {
    local install_deps=false
    if [[ "${1:-}" == "--install-deps" ]]; then
        install_deps=true
    fi

    log_info "=== GA36-MB V1.2 Bootstrap ==="
    log_info "Project root: $ROOT_DIR"
    log_info "Work directory: $WORK_DIR"

    check_system_deps

    if [[ "$install_deps" == true ]]; then
        log_info "Installing missing system dependencies (requires sudo)..."
        if command -v apt-get >/dev/null 2>&1; then
            sudo apt-get update && sudo apt-get install -y \
                git make gcc g++ curl tar xz-utils bzip2 patch sed awk grep find cpio gzip python3 \
                bison flex unzip libc6-dev-armhf-cross
        elif command -v dnf >/dev/null 2>&1; then
            sudo dnf install -y \
                git make gcc gcc-c++ curl tar xz bzip2 patch sed awk grep find cpio gzip python3 \
                bison flex unzip glibc-static-armhf-cross
        elif command -v pacman >/dev/null 2>&1; then
            sudo pacman -Sy --needed \
                git make gcc curl tar xz bzip2 patch sed awk grep find cpio gzip python3 \
                bison flex unzip
        else
            log_warn "Unknown package manager. Please install dependencies manually:"
            log_warn "  git make gcc g++ curl tar xz bzip2 patch sed awk grep find cpio gzip python3 bison flex unzip"
            log_warn "  ARM cross-libs: libc6-dev-armhf-cross (Debian) / glibc-static-armhf-cross (Fedora)"
        fi
    fi

    log_info "=== Downloading sources ==="
    # Toolchain
    download_file "$TOOLCHAIN_URL" "$DL_DIR/$TOOLCHAIN_TARBALL"
    # Linux
    download_file "https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.41.tar.xz" "$DL_DIR/linux-6.12.41.tar.xz"
    # BusyBox
    download_file "https://busybox.net/downloads/busybox-1.36.1.tar.bz2" "$DL_DIR/busybox-1.36.1.tar.bz2"

    log_info "=== Extracting sources ==="
    extract_archive "$DL_DIR/armv7-eabihf--glibc--stable-2025.08-1.tar.xz" "$WORK_DIR/toolchain"
    extract_archive "$DL_DIR/linux-6.12.41.tar.xz" "$WORK_DIR/src"
    extract_archive "$DL_DIR/busybox-1.36.1.tar.bz2" "$WORK_DIR/src"

    # Fix toolchain layout (Bootlin extracts into subdir)
    fix_toolchain_layout

    log_info "=== Bootstrap complete ==="
    log_info ""
    log_info "Next steps:"
    log_info "  1. Run ./build.sh to build the firmware"
    log_info "  2. Flash the resulting image: sudo dd if=output/firmware/ga36-stockboot.img of=/dev/sdX bs=4M status=progress"
}

main "$@"
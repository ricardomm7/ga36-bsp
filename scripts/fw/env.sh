#!/usr/bin/env bash
# GA36-MB V1.2 (A33) firmware build environment.
# Source this from the other scripts/fw/* scripts.
set -euo pipefail

# Repo root (parent of scripts/).
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

# Build work area lives inside the project (reproducible, no external deps).
# Override with GA36_FW_WORK if you want it elsewhere.
# Inside WSL the repo may sit on /mnt/c (NTFS), which is case-insensitive and
# breaks glibc/ncurses builds; default to a native case-sensitive ext4 dir.
if [ -n "${GA36_FW_WORK:-}" ]; then
    FW_WORK="$GA36_FW_WORK"
elif [ -n "${WSL_DISTRO_NAME:-}" ]; then
    FW_WORK="$HOME/r36s-fw-work"
else
    FW_WORK="$ROOT/work"
fi
FW_DL="$FW_WORK/dl"
FW_SRC="$FW_WORK/src"
FW_HOST="$FW_WORK/host"          # host tools built from source (m4, flex, bison)
FW_TOOLCHAIN="$FW_WORK/toolchain"
FW_OUT="$ROOT/output/firmware"   # final artifacts land here (repo)

FW_BOOT="$FW_OUT/boot"           # boot partition payload

# Source versions (single source of truth, mirrors configs/sources.env).
LINUX_VERSION="${LINUX_VERSION:-6.12.41}"
BUSYBOX_VERSION="${BUSYBOX_VERSION:-1.36.1}"
TOOLCHAIN_TARBALL="armv7-eabihf--glibc--stable-2025.08-1.tar.xz"
TOOLCHAIN_URL="https://toolchains.bootlin.com/downloads/releases/toolchains/armv7-eabihf/tarballs/$TOOLCHAIN_TARBALL"

# The board DTS file name as shipped in upstream trees.
BOARD_DTS=sun8i-a33-ga36-mb-v1.2.dts

# Buildroot rejects PATH entries containing spaces (WSL interop appends
# Windows dirs like /mnt/c/Program Files/...). Strip them up front.
IFS=: read -r -a _path_arr <<< "$PATH"
_PATH_CLEAN=""
for _p in "${_path_arr[@]}"; do
    case "$_p" in
        *" "*|*$'\t'*) ;;
        *) _PATH_CLEAN="${_PATH_CLEAN:+$_PATH_CLEAN:}$_p" ;;
    esac
done
export PATH="$_PATH_CLEAN"
unset _path_arr _PATH_CLEAN _p

# Toolchain triple: detected from the extracted Bootlin tree.
export PATH="$FW_TOOLCHAIN/bin:$FW_HOST/bin:$PATH"

# Cross compiler helpers (resolved lazily once the toolchain is extracted).
cross_prefix() {
  local d="$FW_TOOLCHAIN/bin"
  for p in arm-linux-gnueabihf- arm-buildroot-linux-gnueabihf-; do
    if [ -x "$d/${p}gcc" ]; then echo "$d/$p"; return; fi
  done
  echo "ERROR: no cross gcc under $FW_TOOLCHAIN/bin" >&2
  exit 1
}

need_cmd() { command -v "$1" >/dev/null 2>&1 || { echo "Missing: $1" >&2; exit 2; }; }

mkdir -p "$FW_DL" "$FW_SRC" "$FW_OUT" "$FW_BOOT"
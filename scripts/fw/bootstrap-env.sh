#!/usr/bin/env bash
# Bootstrap the GA36 firmware build environment: cross toolchain + host tools.
# Idempotent: already-downloaded/extracted items are skipped.
# Run from WSL:  bash scripts/fw/bootstrap-env.sh
set -euo pipefail
cd "$(dirname "$0")"
source env.sh

dl() { # dl <url> <dest-dir> [filename]
  local url="$1" dir="$2" name="${3:-}"
  [ -n "$name" ] || name="$(basename "$url")"
  if [ ! -s "$dir/$name" ]; then
    echo ">> downloading $name" >&2
    curl -fL --retry 3 --progress-bar -o "$dir/$name" "$url" >&2
  else
    echo ">> have $name" >&2
  fi
  printf '%s/%s\n' "$dir" "$name"
}

echo "==[1/4] toolchain =="
TC_DIR="$FW_WORK/toolchain"
if [ ! -x "$TC_DIR/bin/arm-linux-gnueabihf-gcc" ] && [ ! -x "$TC_DIR/bin/arm-buildroot-linux-gnueabihf-gcc" ]; then
  tarball="$(dl "$TOOLCHAIN_URL" "$FW_DL")"
  echo ">> extracting toolchain (this can take a couple of minutes)"
  mkdir -p "$TC_DIR"
  tar -C "$TC_DIR" --strip-components=1 -xJf "$tarball"
else
  echo ">> toolchain already present"
fi
echo ">> cross compiler: $(cross_prefix)gcc"
"$(cross_prefix)gcc" --version | head -1

echo "==[2/4] host tools (m4, flex, bison) =="
need_cmd make
need_cmd gcc
need_cmd curl

HOSTSRC="$FW_SRC/host-tools"
mkdir -p "$HOSTSRC"

if [ ! -x "$FW_HOST/bin/m4" ]; then
  t="$(dl https://ftp.gnu.org/gnu/m4/m4-1.4.19.tar.xz "$FW_DL")"
  echo ">> building m4"
  rm -rf "$HOSTSRC/m4-1.4.19"; tar -C "$HOSTSRC" -xJf "$t"
  ( cd "$HOSTSRC/m4-1.4.19" && ./configure --prefix="$FW_HOST" >/dev/null && make -j"$(nproc)" >/dev/null && make install >/dev/null )
else
  echo ">> m4 present"
fi

if [ ! -x "$FW_HOST/bin/flex" ]; then
  t="$(dl https://github.com/westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz "$FW_DL")"
  echo ">> building flex"
  rm -rf "$HOSTSRC/flex-2.6.4"; tar -C "$HOSTSRC" -xzf "$t"
  ( cd "$HOSTSRC/flex-2.6.4" && ./configure --prefix="$FW_HOST" >/dev/null && make -j"$(nproc)" >/dev/null && make install >/dev/null )
else
  echo ">> flex present"
fi

if [ ! -x "$FW_HOST/bin/bison" ]; then
  t="$(dl https://ftp.gnu.org/gnu/bison/bison-3.8.2.tar.xz "$FW_DL")"
  echo ">> building bison"
  rm -rf "$HOSTSRC/bison-3.8.2"; tar -C "$HOSTSRC" -xJf "$t"
  ( cd "$HOSTSRC/bison-3.8.2" && ./configure --prefix="$FW_HOST" >/dev/null && make -j"$(nproc)" >/dev/null && make install >/dev/null )
else
  echo ">> bison present"
fi

echo "==[3/4] sources =="
# Linux
dl "https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-$LINUX_VERSION.tar.xz" "$FW_DL"
# BusyBox
dl "https://busybox.net/downloads/busybox-$BUSYBOX_VERSION.tar.bz2" "$FW_DL"

echo "==[4/4] host sanity =="
for t in make gcc git dtc bc python3 cpio patch xz mke2fs; do
  need_cmd "$t" || true
done

echo "bootstrap complete. build area: $FW_WORK"

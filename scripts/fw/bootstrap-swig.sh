#!/usr/bin/env bash
# Build pcre2 + swig from source (no sudo) for U-Boot's pylibfdt/binman.
set -euo pipefail
. "$(cd "$(dirname "$0")" && pwd)/env.sh"

export PATH="$FW_HOST/bin:$PATH"

PCRE2_VER=10.44
SWIG_VER=4.2.1

mkdir -p "$FW_DL"

# --- pcre2 ---
if ! pcre2-config --version >/dev/null 2>&1; then
  if [ ! -d "$FW_SRC/pcre2-$PCRE2_VER" ]; then
    if [ ! -f "$FW_DL/pcre2-$PCRE2_VER.tar.gz" ]; then
      curl -L --retry 3 -o "$FW_DL/pcre2-$PCRE2_VER.tar.gz" \
        "https://github.com/PCRE2Project/pcre2/releases/download/pcre2-$PCRE2_VER/pcre2-$PCRE2_VER.tar.gz"
    fi
    tar -C "$FW_SRC" -xzf "$FW_DL/pcre2-$PCRE2_VER.tar.gz"
  fi
  echo "Building pcre2" >&2
  ( cd "$FW_SRC/pcre2-$PCRE2_VER" \
    && ./configure --prefix="$FW_HOST" --disable-shared >/dev/null \
    && make -j"$(nproc)" >/dev/null \
    && make install >/dev/null )
fi

# --- swig ---
if ! swig -version >/dev/null 2>&1; then
  if [ ! -d "$FW_SRC/swig-$SWIG_VER" ]; then
    if [ ! -f "$FW_DL/swig-$SWIG_VER.tar.gz" ]; then
      curl -L --retry 3 -o "$FW_DL/swig-$SWIG_VER.tar.gz" \
        "https://downloads.sourceforge.net/project/swig/swig/swig-$SWIG_VER/swig-$SWIG_VER.tar.gz"
    fi
    tar -C "$FW_SRC" -xzf "$FW_DL/swig-$SWIG_VER.tar.gz"
  fi
  echo "Building swig" >&2
  ( cd "$FW_SRC/swig-$SWIG_VER" \
    && ./configure --prefix="$FW_HOST" >/dev/null \
    && make -j"$(nproc)" >/dev/null \
    && make install >/dev/null )
fi

echo "pcre2: $(pcre2-config --version)"
echo "swig:  $(swig -version | head -1)"

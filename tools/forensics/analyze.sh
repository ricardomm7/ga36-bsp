#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
source ../../scripts/common.sh
need_original
mkdir -p "$EXTRACT/analysis" "$ROOT/docs"
if [ ! -f "$EXTRACT/analysis/fdisk.txt" ]; then ./extract.sh; fi
{
  echo '# Original firmware analysis'
  echo
  echo 'Generated: '"$(date -u +%FT%TZ)"
  echo
  echo '## Source integrity'
  echo
  stat -c 'size=%s bytes; mtime=%y' "$ORIGINAL"
  [ -f "$EXTRACT/original.sha256" ] && cat "$EXTRACT/original.sha256" || echo 'SHA256 not calculated (run VERIFY_FULL_HASH=1 ./extract.sh).'
  echo
  echo '## Partition table'
  echo
  echo '```text'
  fdisk -l "$ORIGINAL"
  echo '```'
  echo
  echo '## Recognised embedded formats'
  echo
  echo '```text'
  cat "$EXTRACT/analysis/binwalk.txt"
  echo '```'
  echo
  echo '## Rockchip / bootloader strings'
  echo
  echo '```text'
  strings -a "$EXTRACT/boot/sector-0-16MiB.bin" 2>/dev/null | grep -Ei 'u-boot|linux version|rockchip|rk332|rk817|idbloader|trust' | sort -u | head -200 || true
  echo '```'
  echo
  echo '## Extracted partition formats'
  echo
  echo '```text'
  file "$EXTRACT"/boot/* "$EXTRACT"/partitions/* 2>/dev/null || true
  echo '```'
  echo
  echo '## Device trees recovered'
  echo
  find "$EXTRACT/dtb" -type f -name '*.dts' -printf '%f\n' 2>/dev/null || true
  echo
  echo '## Limits of static analysis'
  echo
  echo 'GPIO-to-connector wiring, FN polarity, SD2 card-detect and OTG VBUS/ID wiring require UART and electrical validation. No values have been inferred.'
} > "$ROOT/docs/analysis.md"
echo "Wrote docs/analysis.md"

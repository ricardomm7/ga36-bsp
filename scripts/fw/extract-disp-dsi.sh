#!/usr/bin/env bash
# Extract and annotate the DSI/TCON/LCD pipeline functions from the vendor
# disp.ko so they can be copied 1:1 into the U-Boot bare-metal driver.
#
# disp.ko carries a full .symtab (986 FUNC symbols) + DWARF. This script
# disassembles the display pipeline and stores annotated output under
# extract/disp-dsi/ for the driver port. Ground truth = the factory binary.
#
# Usage: scripts/fw/extract-disp-dsi.sh
set -euo pipefail
cd "$(dirname "$0")/../.."
source scripts/common.sh

KO="$WORK/vendor-lcd/disp.ko"
OUT="$EXTRACT/disp-dsi"
mkdir -p "$OUT"

[ -s "$KO" ] || { echo "error: $KO not found (run recover-lcd-dcs.sh first)" >&2; exit 1; }

# Prefer an ARM-capable objdump (Bootlin cross tools, then host with -m arm).
OBJDUMP=""
_TMPD="$(mktemp -d)"
for cand in \
  "/home/ricar/r36s-fw-work/toolchain/bin/arm-linux-objdump" \
  arm-linux-objdump arm-buildroot-linux-gnueabihf-objdump \
  arm-linux-gnueabihf-objdump objdump; do
  if command -v "$cand" >/dev/null 2>&1 || [ -x "$cand" ]; then
    if "$cand" -d --no-show-raw-insn "$KO" > "$_TMPD/probe.asm" 2>/dev/null \
       && grep -q "ldr" "$_TMPD/probe.asm"; then
      OBJDUMP="$cand"; break
    fi
  fi
done
rm -rf "$_TMPD"
[ -n "$OBJDUMP" ] || { echo "error: no ARM-capable objdump found" >&2; exit 1; }
echo "objdump: $OBJDUMP"

echo "== disp.ko: $(stat -c%s "$KO" 2>/dev/null || wc -c < "$KO") bytes"

# 1. Full symbol inventory (FUNC only, sorted by address).
readelf -sW "$KO" | awk '$4=="FUNC"{print $2" "$8}' > "$OUT/disp.syms"
echo "symbols: $(wc -l < "$OUT/disp.syms") -> $OUT/disp.syms"

# 2. Full disassembly with interleaved source (DWARF line info) where present.
"$OBJDUMP" -d --no-show-raw-insn -l "$KO" > "$OUT/disp.full.asm"
echo "full disasm: $OUT/disp.full.asm ($(wc -l < "$OUT/disp.full.asm") lines)"

# 3. Extract the DSI/TCON pipeline functions (symbols between the markers).
SIG="dsi_|tcon|LCD|lcdc_clk|disp_mipipll|DISP_|bsp_disp_lcd|OSAL_Pwm"
awk -v sig="$SIG" '
  /^[0-9a-f]{8} <.*>:$/ {
    name=$0; gsub(/.*<|>/,"",name)
    if (name ~ sig) { keep=1; print; next }
    keep=0
  }
  keep { print }
' "$OUT/disp.full.asm" > "$OUT/disp.dsi-pipeline.asm"
echo "dsi pipeline asm: $OUT/disp.dsi-pipeline.asm ($(wc -l < "$OUT/disp.dsi-pipeline.asm") lines)"

# 4. Extract .rodata string references used by the pipeline (modinfo probe).
echo "== done. Annotate these next:"
grep -E '<(dsi_get_reg_base|dsi_dphy_get_reg_base|dsi_start|dsi_dphy_cfg|dsi_cfg|dsi_dcs_wr|disp_mipipll_set_coefficient|lcdc_clk_init|tcon0_set_dclk_div|bsp_disp_lcd_open_before)>:' "$OUT/disp.dsi-pipeline.asm"

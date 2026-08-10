#!/usr/bin/env python3
# Decode dram_para fields from factory boot0
import sys

para1 = 0x1102400
rows = (para1 >> 20) & 0xff
bank_raw = (para1 >> 28) & 0x1
page_size_code = (para1 >> 16) & 0xf
ps_map = {1: 512, 2: 1024, 4: 2048, 8: 4096, 16: 8192}

print(f"=== dram_para1 = 0x{para1:08x} ===")
print(f"  rows = {rows}")
print(f"  bank = {bank_raw} -> {'8 banks' if bank_raw else '4 banks'}")
print(f"  page_size_code = {page_size_code} -> {ps_map.get(page_size_code, 'UNKNOWN')} bytes")

para2 = 0x0
dq_width = para2 & 0x1
rank = (para2 >> 12) & 0x3
cs1_ctrl = (para2 >> 4) & 0x1
print(f"\n=== dram_para2 = 0x{para2:08x} ===")
print(f"  dq_width = {dq_width} -> {'16-bit' if dq_width==0 else '8-bit'}")
print(f"  rank = {rank}")
print(f"  cs1_ctrl = {cs1_ctrl}")

tpr13 = 0x30000
print(f"\n=== dram_tpr13 = 0x{tpr13:08x} ===")
print(f"  bit0 auto_detect_disable = {tpr13 & 0x1}")
print(f"  bits2-4 dqs_gating_mode = {(tpr13>>2) & 0x7}")
print(f"  bit5 2T_mode = {(tpr13>>5) & 0x1}")
print(f"  bit8 pll_source = {(tpr13>>8) & 0x1}")
print(f"  bit9 VTC_enable = {(tpr13>>9) & 0x1}")
print(f"  bits16-21 spread_spectrum = 0x{(tpr13>>16) & 0x3f:x}")

tpr8 = 0x220d1d52
print(f"\n=== dram_tpr8 = 0x{tpr8:08x} ===")
print(f"  bit0 pll_bypass = {tpr8 & 0x1}")

# CRITICAL: dram_clk = 0x228 = 552
print(f"\n=== CRITICAL VALUES ===")
print(f"  dram_clk = 0x228 = {0x228}")
print(f"  dram_type = 0x3 = DDR3")
print(f"  dram_zq = 0xf777 = {0xf777}")
print(f"  dram_odt_en = 0x1 = ENABLED")
print(f"  dram_mr0 = 0x1a50")
print(f"  dram_mr1 = 0x4")
print(f"  dram_mr2 = 0x10")
print(f"  dram_mr3 = 0x0")

# Decode MR0: CAS latency, burst length
mr0 = 0x1a50
bl = mr0 & 0x3
cl_low = (mr0 >> 2) & 0x1
cl_high = (mr0 >> 4) & 0x7
cl = cl_high * 2 + cl_low + 4  # DDR3 encoding
wr = (mr0 >> 9) & 0x7
print(f"\n=== MR0 decode = 0x{mr0:04x} ===")
print(f"  burst_length = {bl}")
print(f"  CAS_latency raw = cl_high={cl_high} cl_low={cl_low}")
print(f"  write_recovery = {wr}")

# What the U-Boot code default uses for rank/rows
# U-Boot defaults: .rank=2, .rows=15
# Factory:  rank=0 in para2 means auto/1, rows from para1
# THIS IS KEY - the U-Boot default is rank=2 but factory appears to be rank=0!
print(f"\n=== KEY DISCREPANCIES vs U-Boot defaults ===")
print(f"  U-Boot default rank = 2, Factory rank (para2) = {rank}")
print(f"  U-Boot ODT_EN we set to OFF, Factory says ODT_EN = 1 (ON)!")
print(f"  Factory tpr13 bit0 = 0 -> auto-detect IS enabled in factory!")
print(f"  Factory tpr8 bit0 = 0 -> PLL is NOT in bypass mode")

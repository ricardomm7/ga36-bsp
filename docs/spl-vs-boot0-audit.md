# SPL audit — U-Boot 2025.07 SPL vs vendor boot0 (R36S / GA36-MB V1.2)

Date: 2026-08-06. Method: static disassembly of both binaries (ARMv7, base 0x00000000).

Sources:
- vendor boot0: `extract/boot/sector-0-16MiB.bin` @ LBA 16 (0x2000), 0x8000 bytes, eGON checksum `0x235fce10` — **VALID**.
- our SPL: `output/firmware/ga36-mb-v1.2.img` @ LBA 16, 0x6000 bytes, eGON checksum `0x7e45836c` — **VALID**.

## 0. Bottom line

Both SPLs pass the BROM eGON checksum, so the A33 BROM loads and *enters* our SPL.
Static comparison finds **no definitive execution-blocking difference** in the
DRAM/clock/PMIC path: the DRAM parameters we configured (552 MHz, ZQ 0xf777,
ODT on) are byte-identical to the values embedded in the vendor boot0 header,
and the U-Boot A33 DRAM driver is an internally consistent, proven implementation.

The most plausible explanation for the "dead console" is **observability**: the
R36S has no LEDs and no vibration motor, and neither our SPL nor our U-Boot
currently initializes the only output device — the 640x480 LCD. The chain may
already be running but is invisible.

## 1. Header / load

| Item | Vendor boot0 | Our SPL | Verdict |
|---|---|---|---|
| Magic @ +0x04 | `eGON.BT0` | `eGON.BT0` | match |
| Checksum (STAMP 0x5f0a6c39) | `0x235fce10` | `0x7e45836c` | both valid |
| Length | 0x8000 (32 KiB) | 0x6000 (24 KiB) | both fit SRAM A1 (48 KiB) |
| Entry branch | `b 0x2f8` | `b 0xa4` (vectors) | both ARM, mode switch in code |

## 2. Entry sequence

Both: switch to SVC mode, disable MMU/caches, set stack in SRAM A1, then run
board init. boot0: `sp=0xf000`, calls `0x370c` (clocks) then `0x3104` (main),
never returns. Our SPL: standard armv7 start.S → `board_init_f` →
`sunxi_board_init()`.

## 3. Clock / board init (`boot0 0x370c` vs `clock_init_safe`)

| Register | Vendor boot0 | U-Boot A33 | Verdict |
|---|---|---|---|
| R_PRCM PLL LDO (0x01f01400) | 0x10000/0x0/0x9/0x8 @ +0,+0xc,+0x28,+0xb0 | pll_ctrl1 LDO 1140 mV | equivalent (both enable PLL LDO) |
| PLL1 (CPU) @ CCU+0x00 | 0x80001000 (N=16 → 384 MHz) | 408 MHz (N=17 + pattern) | benign difference |
| cpu_axi_cfg @ CCU+0x50 | 0x00010001 → bits 8/17 set | (defaults) | benign |
| ahb1_apb1_div @ CCU+0x54 | 0x2101 | AHB1_ABP1_DIV_DEFAULT | equivalent |
| PLL6 (periph) | **not touched** (relies on BROM) | configured + lock wait | benign |
| ahb_reset0/gate0 bit 14 (MCTL) | set during DRAM PLL setup | set in mctl_sys_init | **match** |
| ahb_reset0/gate0 bit 6 (DMA) | enabled early | not enabled | benign |

## 4. PMIC (AXP223 / RSB)

- Vendor boot0: **no RSB/PMIC access at all** (relies on AXP223 power-on defaults).
- Our SPL: `axp_init()` + DCDC1/2/3/5 = 3300/1100/1260/1350 mV **before** DRAM
  init (board/sunxi/board.c:550 → sunxi_dram_init). Voltages match the frozen fex.
- Verdict: extra work in our SPL, not a blocker (RSB+AXP223 is a standard,
  proven path on A33). If the board's PMIC were *not* AXP22x, `axp_init()`
  returns an error rather than hanging.

## 5. DRAM init — the interesting part

### 5.1 DRAM PLL source — REAL DIFFERENCE

| Item | Vendor boot0 (`0x3f58`) | U-Boot A33 (`mctl_sys_init`) |
|---|---|---|
| PLL used | **PLL_DDR0** @ CCU+0x20 | **PLL11 / PLL_DDR1** @ CCU+0x4c |
| Target frequency | N=23 → **552 MHz** (dram_clk) | 1104 MHz (2x dram_clk) |
| Pattern reg | CCU+0x290 = 0xd1303333 | CCU+0x2ac = 0xf5860000 (SD pattern) |
| dram_clk_cfg @ CCU+0xf4 | RST/UPD toggled, div left at BROM default | DIV=4, RST+UPD |
| dram_pll_cfg @ CCU+0xf8 | not touched (defaults to DDR0) | SRC_PLL11 (bit 16) |

Both are valid clock sources on A33 silicon; mainline U-Boot deliberately moved
to PLL_DDR1 and is proven across many A33 boards. Electrically equivalent —
**not treated as the blocker**, but it is the largest structural difference.

### 5.2 MR / timing registers — different physical block

| Item | Vendor boot0 | U-Boot A33 |
|---|---|---|
| Block | **DRAMPHY 0x01c65000** | DRAMCTL 0x01c63000 |
| MR0..MR3 | @ +0x54..0x60 = `0x1a50, 0x4, 0x10, 0x0` (CL9 / CWL6) | @ +0x30..0x3c = `0x1c70, 0x40, 0x18, 0x0` (CL11 / CWL8) |
| Timing | +0x24/+0x28 from tpr0/tpr1; +0x18=0x5c000 | dramtmg0..8 computed from 552 MHz |

Each set is internally consistent (MR vs controller tCL/tCWL). Mixing them
(e.g. copying boot0's MR0 alone) would misalign read latency and break
training. **Do not copy MR values in isolation.**

### 5.3 DRAM config CR (DRAMCOM 0x01c62000)

| Item | Vendor boot0 | U-Boot A33 | Verdict |
|---|---|---|---|
| CR @ +0x00 | built from para1/para2 bits | `mctl_set_cr()` from auto-detected geometry | equivalent (DDR3, 16-bit, ch1) |
| SW clk gating | +0xa8 \|= 0x3ffff | swonr \|= 0x3ffff | equivalent |
| Size detect | write/read aliasing loop, 1 rank | `auto_detect_dram_size()` row/page detect | equivalent |

### 5.4 MCTL gating sequence

boot0: gate/reset MCTL off (bit 14) → PLL_DDR0 change → on → `[PHY+0x200]` poll.
U-Boot: gate/reset MCTL on (bit 14) after PLL11 setup → training. Equivalent
intent.

## 6. UART

| Item | Vendor boot0 | Our SPL |
|---|---|---|
| Init | 8250-style, LCR DLAB, DLL/DLH, LCR=3, FCR=6 @ 0x01c28000 | `sunxi_uart`/debug UART, 115200 |
| Port | selected by global @ RAM 0x5250 (UART0) | `CONFIG_SYS_SUNXI_UART` (default UART0) |
| First output | `HELLO! BOOT0 is starting!` + version + DRAM CLK/size prints | **nothing** (no CONFIG_SPL_DISPLAY_PRINT) |

Note: vendor boot0 prints on UART0; the vendor Linux cmdline uses `ttyS2`
(UART2). Our defined milestone targets UART2 — neither matches the vendor boot0
port, which is expected (board bring-up choice, not a blocker).

## 7. Post-DRAM vendor boot0 behavior (not mirrored, out of SPL scope)

- Memory pattern test (8 words @ 0x40000000, sum vs 0x0091a2b0).
- Copies dram_para (128 B) to 0x40800000.
- Loads "boot1" from LBA 38192 to 0x4a000000, checks `"uboot"` magic, jumps.

## 8. Risk-ranked recommendations

1. **(Highest value / matches the milestone)** Give the chain an observable
   output:
   - Enable U-Boot console on UART2 (`CONFIG_SYS_SUNXI_UART=2`), SPL serial +
     `CONFIG_SPL_DISPLAY_PRINT` → boot progress visible on a future UART tap.
   - Enable U-Boot DE2 video (`CONFIG_VIDEO_DE2`) + the fex panel timings
     (640x480 RGB, PWM0/PH00 backlight, PH07 reset) → banner/console visible on
     the LCD. This is the only output the R36S currently has.
2. **(Low risk)** Leave the A33 DRAM driver internals untouched — they are
   proven and the params already match the vendor.
3. **(Do not do)** Copying boot0 MR values or switching to PLL_DDR0 in
   isolation risks breaking training without addressing any proven fault.

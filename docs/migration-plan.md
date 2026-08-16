# GA36-MB V1.2 (R36S) — FEX → mainline DTS migration plan

How to move this board from the stock Allwinner 3.4-legacy firmware (script.bin
/ fex) to a mainline Linux v6.12 sun8i-a33 kernel driven by a device tree.

## 1. Source of truth

Everything below is derived from the stock blob `fex-embedded.bin` (decoded by
`scripts/fex-decode.py`, round-trip verified byte-identical against
sunxi-tools). Canonical outputs:

| File | What it is |
|---|---|
| `output/sys_config.fex` | canonical text export (797 lines), `fex2bin` round-trip verified |
| `output/fex-decode-full.txt` | annotated decode with per-section entry offsets |
| `output/hardware-report.md` | peripheral / pin / rail inventory |
| `output/fex-format-notes.md` | corrected fex binary layout (per-section entry lists) |
| `output/ga36-mb-v1.2.dts` | mainline DTS draft (compiles against v6.12, dtc-validated) |

Status: **Route A is DONE and boots to fbcon on silicon** — kernel 6.12.41 +
ext4 rootfs (`init=/sbin/init`), JD9366 display, and gamepad + FN gpio-keys
in the DTS. Values are the firmware's unless explicitly marked silicon-proven.
The mainline U-Boot replacement (§4, workstream "Boot") is still future work.

## 2. fex section → DTS node mapping

fex section | fex evidence | mainline node | driver | DTS status
---|---|---|---|---
`[sdc0]` | PF00-05 (mmc0), det **PB04**, power `axp22_dcdc1` | `&mmc0` | `allwinner,sun7i-a20-mmc` | enabled
`[uart_para]` | `uart_debug_port=2`, **PB00/PB01 mux 2** | `&uart2` + `uart2_pb_pins` | dw8250 | enabled (console)
`[uart1]` | PG06-09 mux 2 | `&uart1` + `uart1_pg_pins` | dw8250 | enabled — **the analog-stick MCU link** (IRQ 33)
`[pmu_sply]` | RSB PL00/PL01, axp223 | `&r_rsb` + `pmic@3a3` | axp20x | enabled
`[lcd0]` | jd9366, 640x480, **lcd_if=4 (DSI)**, lane 2, PWM **PH00**, PH07, dc1sw | dsi/dphy/tcon0 + panel@0 `boe,jd9366` | sun6i-mipi-dsi + jd9366-ga36mbv1-2 | enabled (Route A, validated in build)
`[lcd0]` pwm | `pwm_used=1`, 20000 Hz | `&pwm` + backlight | pwm-sun4i, pwm-backlight | enabled
`[audio]` | `audio_used=1`, PA ctrl **PH09** | `&codec &dai &sound` + speaker amp | sun8i-a33-codec, simple-audio-card | enabled
`[usbc0]` | OTG, id **PH08**, vbus det `axp_ctrl`, drv `port:power4` | `&usb_otg &usbphy` | sunxi-musb, sunxi-usb-phy | enabled
`[twi0..2]` | all `used=0` | `i2c0..2` | sun6i-i2c | intentionally disabled
`[ctp_para]` | ft5x, TWI0 0x40, `used=0` | — | — | disabled (enable if touch fitted)
`[vip_dev0]` `[vip_dev1]` | sp2518/sp0718 on TWI2, `used=0` | — | — | disabled
`[spi0]` | NOR `at25df641`, PC00-03 | — | — | disabled (U-Boot only)
`[nand0]` `[sdc2]` `[sdc1]` | PC / eMMC / SDIO-WiFi footprints, `used=0` | mmc1/mmc2 | — | disabled
`[gsensor][gyro][light][compass]` | all TWI1, `used=0` | — | — | disabled
`[motor]` | `used=0`, `axp22_dldo4` | — | — | disabled
`[gpio_para]` | PH01/02/03, PL04, PG13 | — | — | SDK placeholder, **not** the buttons
`[ths_para]` | trips 75/90/110 °C | `&ths` thermal-zones | sun8i-ths | provided by SoC dtsi
`[dvfs_table]` | max 1.2 GHz, boot 1008 | cpu0_opp_table (dtsi) | ccu / cpufreq | dtsi OPPs; regulator coupling to verify
`[dram_para]` | **552 MHz DDR3**, zq 0xf777, odt, tpr0-13 | — (U-Boot DRAM init) | — | U-Boot workstream
`[boot]` | `boot_clock=1008` | — | — | U-Boot/kernel defreq

Buttons/analog sticks: **not described by the fex** — fully recovered from the
vendor gamepad module (`udt_joystick.ko`) and kernel UART1 RX decoder instead
(see §8).

## 3. Key mapping rules (learned)

- fex GPIO `port:PXX<mux><pull><drv><data>` → DTS pins `"PXn"` + the `function`
  string from `drivers/pinctrl/sunxi/pinctrl-sun8i-a33.c`. The fex **mux value
  equals the `SUNXI_FUNCTION(m)` mux index** — verified: `PB00<2>` = uart2 =
  mux `0x2` (PB0/PB1 in the driver). PB0/PB1 also expose uart0 at mux 0x3, so
  a board-level `uart2_pb_pins` group is required (already added in the DTS).
- fex rail names → `axp22x.dtsi` labels: `axp22_dcdc1`→`reg_dcdc1`,
  `axp22_dc1sw`→`reg_dc1sw`, `axp22_dldo1/3/4`→`reg_dldo1/3/4`,
  `axp22_ldoio0`→`reg_ldo_io0`, `axp22_eldo2`→`reg_eldo2`.
- `usbc0 port_type=2` → `dr_mode = "otg"`; `usb_id_gpio` → `usb0_id_det-gpios`.
- `lcd_if=4` + `lcd_dsi_*` params → DSI; panel is on the MIPI-DSI FPC.
- Driver-IC name `jd9366_8inch` is the **vendor panel name**, not the
  controller IC (Jadard JD9366 is a MIPI-DSI TFT driver). The init sequence
  lives in the vendor kernel's `lcd_jd9366_8inch` driver, **not** in the fex.

## 4. Workstreams

### A. Kernel DTS — Route A wiring complete
- `dts/sun8i-a33-ga36-mb-v1.2.dts` → installed as
  `arch/arm/boot/dts/allwinner/sun8i-a33-ga36-mb-v1.2.dts` by
  `scripts/fw/build-linux.sh`.
- Compiles clean (v6.12 dtsi + dt-bindings); DSI path verified in the emitted
  DTB: `dsi@1ca0000`/`d-phy@1ca1000` `status="okay"`, `panel@0` compatible
  `boe,jd9366` with `power-supply dc1sw`, `reset-gpios PH07`, `backlight`,
  `vcc-dsi-supply`/`vcc-supply` = dldo3, `pwm@1c21400` + `pwm0_pin`.

### B. Kernel config — done for Route A
`board/ga36-mb-v1.2/linux-ga36.config` (stored, regenerated by
`scripts/fw/build-linux.sh` from `sunxi_defconfig` + `kernel-ga36.config.fragment`).
Key Route A options: `CONFIG_ARM_APPENDED_DTB`, `CONFIG_ARM_ATAG_DTB_COMPAT`,
`CONFIG_CMDLINE_FORCE` with the Route A cmdline (`root=/dev/mmcblk0p1`),
`CONFIG_DRM_SUN4I`, `CONFIG_DRM_SUN6I_DSI`, `CONFIG_DRM_MIPI_DSI`,
`CONFIG_DRM_PANEL_JD9366` (custom), `CONFIG_DRM_FBDEV_EMULATION`,
`CONFIG_FRAMEBUFFER_CONSOLE`, AXP20X/RSB regulators, ext4.

### C. U-Boot — Route A sidesteps this; rebuild = future work
Route A keeps the **stock** bootloader (BROM → boot0/boot1 → Android `bootimg`),
so no U-Boot rebuild is needed to boot. Mainline U-Boot remains future work:
- New board based on sun8i-a33 (`A33-OLinuXino` defconfig is the reference).
- DRAM init from fex `[dram_para]`: `CONFIG_DRAM_CLK=552`, DDR3
  (`CONFIG_DRAM_TYPE`), `CONFIG_DRAM_ZQ=0xf777`, `CONFIG_DRAM_ODT_EN=y`,
  timings from `dram_tpr0..13` / `dram_mr0..3`.
- `CONFIG_MMC0_CD_PIN="PB4"`, `CONFIG_USB0_VBUS_DET="AXP0-VBUS-DETECT"`,
  `CONFIG_USB0_ID_DET="PH8"`, console on uart2 (`CONFIG_SYS_STDIO...`).
- Replace Android `bootimg` + `script.bin` with a **FIT image**
  (kernel dtb + rootfs), and delete `script.bin` from the boot chain.
- U-Boot must also hand the same DTS memory size (RAM size still unconfirmed).

### D. Display panel (JD9366) — solved for Route A
- Driver: `board/ga36-mb-v1.2/jd9366-ga36mbv1-2.c` (plumbing ported from the
  community GA36-MB driver
  [jd9366-ga36mbv1-2.c](https://github.com/CodeZombie/GA36-MB-Linux), proven
  on silicon), registered as `CONFIG_DRM_PANEL_JD9366` (Kconfig + Makefile
  injected by `scripts/fw/build-linux.sh`).
- Init DCS is **not** hardcoded: it comes from
  `board/ga36-mb-v1.2/jd9366_init.h`, auto-extracted from the vendor `lcd.ko`
  and hash-pinned (`scripts/fw/recover-lcd-dcs.sh`, see REPRODUCIBILITY.md).
- Panel mode (640x480@30MHz, ht 1040 / vt 518) matches fex `[lcd0]` and the
  community default_mode.

### E. Boot chain — Route A (stock bootloader + our kernel) — DONE
`scripts/fw/package-stock.sh` produces `output/firmware/ga36-stockboot.img`:

1. Factory DOS MBR (byte-exact, `bootloader/ga36-stock-mbr.bin`) at sector 0 —
   this unit's boot1 does not boot a plain sfdisk MBR (see STATUS.md).
2. `bootloader/ga36-stock-bootchain-128m.bin.gz` is decompressed on the fly
   and its 262143 sectors copied into the image — this preserves the vital
   `boot0@LBA16`, `boot1@LBA38192`, sunxi MBR `@40960`, `env@139264`, EBRs and
   the mysterious factory-config offsets without needing the huge original
   `test.img`.
3. `output/firmware/boot/android_boot.img` written at `LBA 172032` (the stock
   "boot" partition). Built by `scripts/fw/build-linux.sh` via
   `scripts/fw/helpers/mkbootimg.py`:
   `--base 0x40000000 --board sun8i --pagesize 2048`, kernel = zImage with the
   board DTB appended, **empty ramdisk** (root is on disk), cmdline in header.
4. busybox rootfs (`init=/sbin/init`, getty on ttyS2) as ext4 at `LBA 3383336`
   — inside MBR P1 (factory "UDISK" slot) so mainline mounts it as
   `/dev/mmcblk0p1`. The factory EBR defines no p7; its "p7 rootfs" only
   exists in the vendor `partitions=` cmdline, unsupported by mainline.

Kernel uses `CONFIG_CMDLINE_FORCE`, so the stock bootloader's own bootargs are
ignored: `root=/dev/mmcblk0p1 rootfstype=ext4 rootwait rw init=/sbin/init
coherent_pool=4m boot_type=1 config_size=0 earlycon=uart,mmio32,0x01c28800
loglevel=8 panic=10`.

Verification baked into the script: boot0 eGON checksum VALID, `ANDROID!`
magic at LBA 172032, MBR `0x55aa` + partition start, env partition byte-identical.

## 5. Validation gates (bring-up order)

Silent-failure risk is high (dark screen, no log), so gates go from *cheap and
diagnostic* to *complex*:

1. **Serial console (UART2, PB00/PB01)** — first gate. 3.3V UART on the debug
   pads near the PCB top (see
   [madeiragab/darkos-ga36-port](https://github.com/madeiragab/darkos-ga36-port/blob/main/docs/hardware.md)).
   Proves SoC + PMIC + DRAM via U-Boot + kernel logs.
2. **PMIC** — dump AXP registers over RSB, compare to fex `[power_sply]`
   (dcdc1 3300, dcdc2 1100, dcdc3 1260, dcdc5 1350, aldo2 2500, aldo3 3000).
   Multimeter on rails. Flag: dcdc5 1350 mV vs DDR3 nominal 1.5 V — this is
   what stock firmware programs; confirm on silicon.
3. **SD boot** — mmc0 on PF + cd PB04; kernel must mount rootfs from the SD.
4. **Backlight** — pwm0 on PH00, 20 kHz; change duty via sysfs, scope it.
5. **Display** — workstream D.
6. **USB OTG** — ID detect on PH08; `lsusb` + gadget mode.
7. **Audio** — `speaker-test`/`aplay`; verify PH09 amp enable drives the amp.
8. **Input — 16 buttons as gpio-keys** — DONE in the DTS (map fully known,
   see §8; `micro_gamepad` + `fn-key` gpio-keys nodes, `CONFIG_KEYBOARD_GPIO`).
   Remaining: silicon gate — `cat /proc/bus/input/devices` (expect the two
   devices) and `cat /proc/interrupts` while pressing buttons (PIO IRQ
   counter must increment); if inverted, flip
   `GPIO_ACTIVE_LOW`↔`GPIO_ACTIVE_HIGH` in the DTS.
9. **Analog sticks over UART1** — see §8. Frame header `A7 10 00` is the
   sync; **the only unknown left is the baud** — the vendor kernel's
   `init_termios` is B9600 and its `set_termios` programs DLL/DLH on open
   (see §6), so scan **9600 first** (then 115200) for `A7 10 00`.
10. **DRAM 552 MHz** — `memtester`; tune `CONFIG_DRAM_CLK` in U-Boot if needed.

## 6. Risks / unknowns

- LCD bus type (DSI vs RGB) — needs physical connector trace.
- JD9366 panel init sequence — not in the fex, must come from vendor kernel.
- Real RAM size — fex DRAM 552 MHz + DDR3 confirmed, capacity unconfirmed.
- dcdc5 1350 mV vs 1.5 V nominal — firmware value, verify on board.
- **UART1 baud** — **RESOLVED from the vendor kernel binary** (GA36 `zImage`,
  VA = `0xc0008000` + file offset): the driver does *not* leave the baud to
  firmware. `serial_core`'s `uart_register_driver` (file `0x235318`) sets
  `init_termios.c_cflag = 0xcbd` (= `B9600|CS8|CREAD|HUPCL|CLOCAL`,
  `c_ispeed = c_ospeed = 0x2580` = 9600), and the runtime `sunxi_uart_ops`
  entry `set_termios` (file `0x2376ec`) is **non-NULL**: on open,
  `uart_startup` → `uart_change_speed` calls it, which resolves the baud via
  `uart_get_baud_rate` (file `0x2359bc`) → `uart_get_divisor` (file
  `0x235d70`, divisor = uartclk/(16·baud), 156 for 9600 @ 24 MHz) and programs
  **DLL/DLH** (file `0x235d18`). So opening `/dev/ttyS1` programs the port to
  **9600** unless userspace sets termios first. The earlier "0x14b2 (B115200)"
  movw hits were byte-offset misreads — the real constants are `0x4b2` (an
  audio driver, unrelated) and `0xcbd`/`0x4bd` (both B9600). The MCU stick is
  therefore most likely fixed at **9600**.
- Second SD slot / mmc1/mmc2 — fex `used=0`; physical slot existence unconfirmed.
- Headphone jack-detect GPIO — not exposed in the fex; vendor uses
  `/sys/class/switch/h2w/state` (needs a GPIO scan on bench).
- Hardware volume keys — fex has no `[keyboard]`/LRADC keymap; volume is
  handled in software (RetroArch hotkeys L2/R2 combos), no GPIO to map.
- U-Boot FIT conversion — removes script.bin; any error = silent black screen.

## 7. Reference material

- v6.12: `sun8i-a33.dtsi`, `sun8i-a23-a33.dtsi`, `axp22x.dtsi`, `axp223.dtsi`,
  `pinctrl-sun8i-a33.c` (all fetched into the build-validation tree).
- `output/fex-decode-full.txt` for every `used=`/GPIO/voltage number quoted
  above.
- Buildroot reference for sunxi/A33: `configs/olimex_a33_olinuxino_defconfig`.

## 8. Controls recovery (from vendor binaries, not the fex)

Source: `udt_joystick.ko` (stock `usr/lib/modules/`, the only gamepad module)
plus the vendor 3.4 kernel's UART1 RX decoder.

### 8.1 Buttons — 16 × gpio-keys on the A33 `&pio` (PE/PB banks)

| idx | GPIO | pin | input keycode | meaning |
|---|---|---|---|---|
| 0  | 145 | PE17 | 311 BTN_TR   | R1 |
| 1  | 144 | PE16 | 313 BTN_TR2  | R2 |
| 2  | 143 | PE15 | 310 BTN_TL   | L1 |
| 3  | 142 | PE14 | 312 BTN_TL2  | L2 |
| 4  | 141 | PE13 | 304 BTN_A    | A |
| 5  | 140 | PE12 | 305 BTN_B    | B |
| 6  | 139 | PE11 | 307 BTN_X    | X |
| 7  | 138 | PE10 | 308 BTN_Y    | Y |
| 8  | 135 | PE7  | 546 BTN_DPAD_LEFT  | DPAD-L |
| 9  | 134 | PE6  | 547 BTN_DPAD_RIGHT | DPAD-R |
| 10 | 137 | PE9  | 544 BTN_DPAD_UP    | DPAD-U |
| 11 | 136 | PE8  | 545 BTN_DPAD_DOWN  | DPAD-D |
| 12 | 133 | PE5  | 314 BTN_SELECT | SELECT |
| 13 | 132 | PE4  | 315 BTN_START  | START |
| 14 | 35  | PB3  | 317 BTN_THUMBL | L3 |
| 15 | 34  | PB2  | 318 BTN_THUMBR | R3 |

- FN = GPIO 129 (PE1) → `KEY_FN` (464), a **separate** input device (the
  vendor's `udt_keyboard`); holding it switches the module to "keyboard" mode
  and emits its own key events.
- GPIOn arithmetic: pin = bank_base + n, PE base = 128, PB base = 32.
- The vendor reads the 16 buttons with `gpio_get_value` + a 5-ms debounce in
  `jk_keys_poll` and feeds a **polled input device** named `micro_gamepad`
  (matches the RetroArch autoconfig `input_device = "micro_gamepad"`).
- **Implemented** in `dts/sun8i-a33-ga36-mb-v1.2.dts` as two gpio-keys nodes
  (`micro_gamepad` + `fn-key`), each button `GPIO_ACTIVE_LOW` with
  `bias-pull-up` pin groups, kernel `CONFIG_KEYBOARD_GPIO=y`. Polarity is the
  R36S-family standard but is **unproven on silicon** — see
  docs/hardware-notes.md (2026-08-16) for the verification recipe.

### 8.2 Analog sticks — UART1 frame decoder (in the vendor kernel)

The vendor kernel's own `sw_uart_irq` (sunxi-uart driver, `sun8i-a33`) has a
vendor hook: on the port whose `port[0x24] == 33` (UART1, IRQ 33) it runs a
tiny frame state machine that writes into a global struct at VA `0xc0a71400`
(offsets: `state=+0x474`, `buff_rcv_Len=+0x478`, `buff_rcv[0..7]=+0x47c`).
`buff_rcv` = `0xc0a7187c`, `buff_rcv_Len` = `0xc0a71878` (both exported —
this is why direct-address scans for `0xc0a7187c` found no writer: the code
loads the struct base `0xc0a71400`).

Verified serial-core / sunxi-uart symbols from the vendor `zImage` (VA =
`0xc0008000` + file, all ARM, confirmed against `__ksymtab` `{value, name}`
entries in the `0x684af0` region):

| symbol | VA | file |
|---|---|---|
| `uart_register_driver` | `0xc023d318` | `0x235318` |
| `uart_get_baud_rate` | `0xc023d9bc` | `0x2359bc` |
| `uart_get_divisor` | `0xc023bd70` | `0x235d70` |
| `uart_add_one_port` | `0xc023c524` | `0x234524` |
| sw-uart `set_termios` (ops) | `0xc023f6ec` | `0x2376ec` |
| sw-uart baud-write helper | `0xc023bd18` | `0x235d18` |
| `buff_rcv` | `0xc0a7187c` | `0xa7187c` |
| `buff_rcv_Len` | `0xc0a71878` | `0xa71878` |
| sw_uart_* exported (alt. link) | `0xc053fa60`–`0xc053fc95` | `0x537a60`–`0x537c95` |

(The `sw_uart_*` symbols exported via the driver's own module-style ksymtab
link at `0xc053exxx`, but the runtime `ports[]` ops table points at the
`0xc023exxx` implementations — the ones verified above.)

Frame format (little-endian byte stream on UART1 RX, decoded per byte):

```
A7 10 00  Lx Ly Rx Ry  [b7] [b8]
```

- `A7 10 00` = sync header (A7 → state 1, 10 → state 2, 00 → state 3).
- `Lx Ly Rx Ry` = raw 0..255 stick bytes.
- `b7`/`b8` = optional tail (frame resets if more than 8 payload bytes).
- Driver map (module `adc_val_to_axis`): `0..50 → 0`, `51..108 → (v-50)/7+1`,
  `109..147 → 9` (deadzone), `148..204 → (v-148)/7+10`, `205..255 → 18`.
  Reported as a polled ABS device: `ABS_X`/`ABS_Y`/`ABS_RX`/`ABS_RY`,
  range 0..18, centre 9. **Lx and Ly are inverted in the vendor driver**
  (`18 - axis`), Rx/Ry are not.

### 8.3 Vendor stick handshake (module ↔ MCU — NOT needed in mainline)

The module writes 6 bytes to `/dev/ttyS1` (`encry_rw`, no termios) and a
delayed-work auth (`anti_work_func`) validates `buff_rcv[3..6]` against a
per-boot random key:

```
data[11] == (Lx ^ Ry ^ 0x5a) - 1
data[12] == (Ry ^ Ly ^ 0x5a) - 2
data[13] == (Ry ^ Rx ^ 0x5a) - 3
```

3 failures → drive GPIO 202 (PH10) low to reset the stick MCU. This is
anti-piracy glue. The MCU streams the `A7 10 00` frames regardless of auth,
so mainline only needs RX + the frame decode.

### 8.4 RetroArch mapping (stock EmuELEC autoconfig)

`/etc/retroarch-joypad-autoconfig/micro_gamepad.cfg` (udev driver):
B=0, Y=3, A=1, X=2, d-pad 13/14/15/16, select=8, start=9, L=4, R=5, L2=6,
R2=7, L3=11, R3=12; axes Lx=−0/+0, Ly=−1/+1, Rx=−2/+2, Ry=−3/+3.

### 8.5 Open questions (input)

- UART1 baud — **resolved to 9600** from the vendor kernel (`init_termios`
  `0xcbd`, verified `set_termios` → DLL/DLH path; see §6). Confirm the MCU on
  bench: scan 9600 first, then 115200.
- Whether the stick MCU talks at all without the vendor handshake — test by
  scanning bauds for `A7 10 00` with the UART1 RX pin (PG07) floating vs
  wired to the stick FPC. Kernel-side evidence points to **9600** (see §6).

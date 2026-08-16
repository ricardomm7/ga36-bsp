# GA36-MB V1.2 hardware notebook

Start with generated facts in `analysis.md`. Add each bench-proven electrical fact with photo reference, test method and confidence.

## FACTS

### 2026-08-16 — Gamepad map recovered from the vendor module; implemented in the DTS (static, unproven)
- **Finding:** the 16 button pins (PE4-17, PB2-3) and the FN pin (PE1) were
  recovered from the stock gamepad module `udt_joystick.ko`, which polls the
  GPIOs with `gpio_get_value` + a 5-ms debounce and feeds a polled input
  device named `micro_gamepad` (FN is a separate `udt_keyboard` device on
  PE1). Implemented in `dts/sun8i-a33-ga36-mb-v1.2.dts` as two gpio-keys
  nodes (`micro_gamepad` + `fn-key`, `CONFIG_KEYBOARD_GPIO=y`), each button
  `GPIO_ACTIVE_LOW` with `bias-pull-up` pin groups in `&pio`, per the
  R36S-family standard.
- **Silicon status: NOT CONFIRMED** — active-low + pull-up is an assumption.
  Verify on the flashed image: `cat /proc/bus/input/devices` (expect
  `micro_gamepad` and `fn-key`), then `cat /proc/interrupts` while pressing
  buttons (PIO IRQ counter must increment). If every input reports inverted,
  flip `GPIO_ACTIVE_LOW`↔`GPIO_ACTIVE_HIGH` in the DTS and rebuild.

### 2026-08-11 — Kernel boots to fbcon; missing `/memory` node was the crash (silicon-proven)
- **Finding:** with the explicit 512 MiB `/memory` node in
  `dts/sun8i-a33-ga36-mb-v1.2.dts`, the mainline 6.12 kernel **boots** on the
  unit: splash passes, Tux logo + kernel log render on the LCD via fbcon.
- **Root cause of the long "static splash":** the DTS had **no** `/memory`
  node and relied on `CONFIG_ARM_ATAG_DTB_COMPAT`. The stock boot1 does **not**
  reliably deliver ATAG_MEM to a mainline zImage on this unit, so the kernel
  crashed before the console. The working community DTS
  ([`sun8i-a33-ga36mb-v12.dts`](https://github.com/CodeZombie/GA36-MB-Linux))
  declares `memory@40000000 { reg = <0x40000000 0x20000000>; }` — copied
  verbatim.
- **Silicon status: CONFIRMED.**

### 2026-08-11 — This unit's boot1 requires the factory PhoenixCard DOS MBR (silicon-proven)
- **Finding:** with a plain `sfdisk` MBR (single ext4 partition @262144) the
  board stays **stuck on the splash even with the STOCK kernel**. With the
  byte-exact factory DOS MBR (P1 FAT32@3383336, P2 FAT16 bootable@73728, P3
  extended@1, sig 0xaa55) the same stock kernel boots. The factory MBR is
  committed as `bootloader/ga36-stock-mbr.bin` and written by
  `package-stock.sh` at sector 0. NOTE: the community GA36-MB-V1.2 boots with
  a plain parted/sfdisk MBR — this unit's boot1 differs.
- **Silicon status: CONFIRMED.**

### 2026-08-11 — Mainline rootfs mount: no p7 in the EBR; rootfs must live in an MBR partition (static, offset-proven)
- **Finding:** the factory DOS/EBR table defines only p5 (env@139264), p6
  (boot@172032) and p8 (storage@1286144, type 0x83). The factory "p7 rootfs"
  (@237568) exists **only** in the vendor `partitions=` cmdline, which the
  mainline kernel does not support. A rootfs at 262144 (as the earlier
  `package-stock.sh` wrote) is therefore **outside any partition** and cannot
  be mounted (`root=/dev/mmcblk0p1` pointed at the FAT32 UDISK slot instead).
  The current layout writes the ext4 rootfs **inside MBR P1** (sector 3383336)
  so it is `/dev/mmcblk0p1` exactly as the forced cmdline expects.
- **Silicon status: NOT CONFIRMED** — reflash `ga36-stockboot.img` and confirm
  the BusyBox shell.

### 2026-08-11 — Kernel must sit at LBA 172032, not 172031 (static, source-confirmed)
- **Finding:** the stock bootloader reads the Android boot image from sector
  **172032** (64 MiB + 0x1000 into the boot partition; confirmed in
  [CodeZombie/GA36-MB-Linux](https://github.com/CodeZombie/GA36-MB-Linux):
  `dd if=boot.img of=new.img bs=512 seek=172032`, and in the original
  `package-stock.sh`).
- **Regression:** commit `7ead1c8` changed `BOOT_IMG_LBA` 172032 → 172031,
  so the image landed one sector early and the stock bootloader never found
  the kernel — the board stayed stuck on the splash logo.
- **Fix:** `scripts/fw/package-stock.sh` writes and verifies `ANDROID!` magic
  at LBA **172032** (self-checked at build time).
- **Silicon status: NOT CONFIRMED** — reflash and observe the kernel console
  (UART2 or fbcon on the LCD).

### 2026-08-10 — SPL reads U-Boot 16 sectors ahead of where the image puts it (superseded)
- **Context:** part of the abandoned mainline SPL+U-Boot port. The mainline
  SPL (`spl_mmc_load`) added `CONFIG_SYS_MMCSD_RAW_MODE_U_BOOT_DATA_PART_OFFSET`
  (sunxi default `0x10`), reading U-Boot at LBA 96 while the image placed it at
  LBA 80. Fixed with `=0` in the (now removed) `uboot/` board files.
- **Silicon status: NOT CONFIRMED.** The mainline U-Boot strategy was dropped
  in favour of the stock bootloader; this entry is retained as historical
  evidence only.

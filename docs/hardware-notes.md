# GA36-MB V1.2 hardware notebook

Start with generated facts in `analysis.md`. Add each bench-proven electrical fact with photo reference, test method and confidence.

## FACTS

### 2026-08-11 — Kernel must sit at LBA 172032, not 172031 (static, source-confirmed)
- **Finding:** the stock bootloader reads the Android boot image from sector
  **172032** (64 MiB + 0x1000 into the boot partition; confirmed in
  `docs/GA36-MB-Linux`: `dd if=boot.img of=new.img bs=512 seek=172032`, and in
  the original `package-stock.sh`).
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

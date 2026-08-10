# GA36-MB V1.2 hardware notebook

Start with generated facts in `analysis.md`. Add each bench-proven electrical fact with photo reference, test method and confidence.

## FACTS

### 2026-08-10 — SPL reads U-Boot 16 sectors ahead of where the image puts it (static, not yet silicon-confirmed)
- **Finding (static, conclusive on the binary):** the SPL (`spl_mmc_load`) adds
  `CONFIG_SYS_MMCSD_RAW_MODE_U_BOOT_DATA_PART_OFFSET` (sunxi default `0x10`)
  when loading U-Boot in raw SD mode (`part == 0`). Disassembly of the real
  SPL (`build/uboot/spl/u-boot-spl`, RAW path) shows `raw_sect(0x50) + 0x10`
  → reads LBA **96**, but `u-boot-sunxi-with-spl.bin` places U-Boot proper at
  file `0x8000`, i.e. LBA **80** once written at LBA 16.
- **Fix:** `CONFIG_SYS_MMCSD_RAW_MODE_U_BOOT_DATA_PART_OFFSET=0` in
  `uboot/configs/ga36_mb_v1_2_defconfig`; rebuilt; repackaged.
- **Delivery chain VERIFIED on files** (sha256 + byte compares):
  build with-spl == packaged with-spl (`2e192c28…`); img LBA16 boot area ==
  with-spl.bin; img LBA80 == u-boot legacy header (`27 05 19 56`); disassembled
  ELF code == eGON SPL code (17756 B). img sha256 `fc68c72d…`.
- **Silicon status: NOT CONFIRMED.** The inserted USB card (Disk 1, 31.26 GB)
  holds a single empty FAT32 (~29 GB) — it does not contain the image. Fix is a
  *hypothesis* until a flashed card is read back and the beacon pattern changes.

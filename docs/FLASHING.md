# GA36-MB V1.2 (R36S) — Flashing & backlight-beacon guide

**Image:** `output/firmware/ga36-custom.img` (512 MiB raw disk image)

This is a **bring-up build**. Its job is to prove the board is alive and to
pinpoint where the boot chain stops — **using the LCD backlight as a beacon,
because there is no working UART on this board**. Read §3 before flashing.

**Boot chain (all built from source — no vendor blobs):**

```
A33 boot ROM  ──reads LBA 16──▶  SPL (u-boot-sunxi-with-spl.bin)
SPL           ──reads LBA 80──▶  U-Boot 2025.07
U-Boot        ──loads ext4───▶   /boot/zImage + /boot/*.dtb + /boot/initramfs.cpio.gz
Linux 6.12.41 ──runs /init──▶    static BusyBox initramfs
```

No `script.bin`, no `boot0`/`boot1`, no vendor DRAM firmware is used.

---

## 1. What you need

| Item | Detail |
|---|---|
| microSD card | **≥ 512 MiB** (image is 512 MiB; the card is overwritten completely). |
| Card reader + host | Windows, macOS, or Linux |
| Flasher | Raspberry Pi Imager, balenaEtcher, Rufus (Windows), Win32DiskImager, or `dd` |

**No serial adapter is required** for this test. Status is read from the
LCD backlight (see §3).

---

## 2. Flashing instructions

The card does not need to be formatted first — the image replaces the entire
card including the partition table.

### Raspberry Pi Imager
1. **Choose OS** → scroll to bottom → **Use custom** → select `ga36-custom.img`.
2. **Choose Storage** → select the microSD card (verify it is the right disk!).
3. Click **Write**. Confirm the overwrite warning.

### balenaEtcher
1. **Flash from file** → select `ga36-custom.img`.
2. Select the target card → **Flash!** (ignore any "unrecognised" warning).

### Windows (Rufus / Win32DiskImager)
1. Rufus: Device = the card, select the `.img`, **Start**. Answer "write in
   DD image mode?" with **Yes**.
2. Win32DiskImager: select image, select device, **Write**.

### Linux (dd)
```sh
sudo dd if=output/firmware/ga36-custom.img of=/dev/sdX bs=4M conv=fsync status=progress
```
Replace `/dev/sdX` with the **card** device, never a partition (`/dev/sdX1`)
and never your system disk. Double-check with `lsblk` before running.

### Verify after flashing (recommended)
```sh
sha256sum output/firmware/ga36-custom.img
# expected: fc68c72dad131ada95e6c3935df55fd3895aaf10ce58482e0468b36afcab7696

# re-read the card and compare:
sudo dd if=/dev/sdX bs=4M status=none | sha256sum
```

> **Verify the card, not just the file.** File-level checks prove the image is
> right; only a read-back of the physical card proves the board will see it.
> On Windows run `scripts/fw/verify-flash.ps1` (elevated) to compare LBA 16 /
> LBA 80 (and optionally the whole image) against the .img. Double-check the
> device name (`lsblk`) before flashing — WSL/USB passthrough has silently
> written to the wrong node before.
>
> The image's partition table and SPL sit at the start of the card. If you
> "quick-format" the card afterwards, you destroy the boot chain — reflash
> instead.

---

## 3. Reading the result — backlight beacon

Power on the board (power button, ~1 s). Watch the **LCD backlight** for the
first ~5 seconds. There are only three possible outcomes:

| Result | What it means | Action |
|---|---|---|
| **No glow at all** | The SPL never ran far enough to turn the backlight on. Either the SPL isn't loaded from the card, the A33 couldn't read the SD, or it hung before the beacon (very early — PMIC/RSB/clock). | The SPL itself was not reached. This is the "card not read at all" case. Try re-seating/re-flashing; if it persists, the next step is a different SD-boot probing path, not DRAM. |
| **Steady glow** (stays on) | SPL + PMIC rails are alive, and the SPL **hung during DRAM init** — the beacon is on, but the SPL never printed the DRAM size / never reached U-Boot. | Confirms the board reads our SD and the PMIC config works. DRAM training is the failure. We are already at the safe mainline settings (432 MHz); the next step is debugged DRAM values. |
| **Glow, then 3 blinks, then off** | **Full SPL + DRAM + U-Boot-proper success.** The blink pattern runs at the start of U-Boot proper, proving DRAM training worked and U-Boot is executing. | Boot chain is alive. Kernel/display bring-up is the next milestone. |

The backlight is driven by AXP **DC1SW** (LCD power) + GPIO **PH00**. The
beacon turns it on in the SPL just *before* DRAM init, then emits a checkpoint
pattern. **The blink protocol below is outdated** — the current multi-
checkpoint protocol (2=DRAM OK … 6=U-Boot init done, plus failure patterns)
lives in `docs/STATUS.md` (§ Beacon protocol).

So a **steady glow = "alive, hung in DRAM"** and a **blink = "DRAM + U-Boot
OK"** — two previously indistinguishable states are now visible without a
serial cable.

---

## 4. Partition layout

```
Offset (bytes)   LBA     Size       Content
──────────────   ───     ─────      ─────────────────────────────────────────
0x000000         0       8 KiB      MBR + padding (partition table)
0x002000         16      ~24 KiB    SPL (eGON "BT0" header + SPL binary)
0x005000         80      ~494 KiB   U-Boot 2025.07 (raw, from sector 80)
0x100000         2048    64 MiB     Partition 1: ext4 (bootable, type 0x83)
0x820000         133120  447 MiB    Partition 2: ext4 (Buildroot rootfs)
```

Partition 1 (`mmc 0:1` in U-Boot) contains:

```
boot/
├── boot.scr               U-Boot boot script (loaded to 0x41900000, sourced)
├── zImage                 Linux 6.12.41 ARM zImage
├── sun8i-a33-ga36-mb-v1.2.dtb   board device tree
└── initramfs.cpio.gz      static-BusyBox initramfs
```

---

## 5. What is intentionally NOT enabled yet

- **LCD panel / video**: the stock RGB video path cannot drive the MIPI-DSI
  (JD9366) panel and is compiled out (`# CONFIG_VIDEO_SUNXI is not set`).
  The backlight beacon is deliberately independent of the panel driver.
- **DRAM speed**: set to the proven mainline A33 values
  (`CONFIG_DRAM_CLK=432`, `CONFIG_DRAM_ZQ=15291`). The vendor's 552 MHz
  / ZQ 63351 values are the next thing to validate once the board boots.
- **Rootfs**: the initramfs is a bring-up rootfs (BusyBox + getty). The full
  Buildroot rootfs is a separate, later milestone.

---

## 6. Recovery procedure

The firmware lives **entirely on the microSD** — nothing is written to the
board's own storage. A failed boot cannot brick the console. Recovery is
always: **reflash the card from a host computer.**

1. Power off (hold the power button ~5 s, or wait for AXP low-power cut-off).
2. **Keep the original factory card safe** — it is your fallback and
   reference.
3. Reflash this image, or a rebuilt variant (see below).

### Rebuilding after a test result
```sh
# repo root, from WSL
bash scripts/fw/build-uboot.sh      # applies patches/uboot/* + rebuilds U-Boot
bash scripts/fw/package-final.sh    # assembles ga36-custom.img
```
- **No glow** → before touching DRAM, verify the card reads: re-seat, reflash,
  try a different (class-10) card.
- **Steady glow** → the beacon worked (we know SPL/PMIC are fine) and DRAM
  training hangs even at 432 MHz. Bring the serial-UART path up (UART2/PB00-
  PB01) or instrument `dram_sun8i_a33.c` next.
- **3 blinks** → SPL + U-Boot good. Next: validate DRAM 480/552, then the
  kernel.

---

## 7. Notes

- Image sha256: `fc68c72dad131ada95e6c3935df55fd3895aaf10ce58482e0468b36afcab7696`
- This build boots `root=/dev/ram0` from the initramfs — the SD partition is
  used for boot payloads only.
- Local U-Boot changes live in `patches/uboot/` (Kconfig symbol +
  `board/sunxi/board.c` beacon); `scripts/fw/build-uboot.sh` applies them
  idempotently.

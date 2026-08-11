# GA36-MB V1.2 (R36S) — Flashing guide

**Image:** `output/firmware/ga36-stockboot.img` (1 GiB raw disk image,
`GA36_SD_SIZE_MB` overrides the size).

This image keeps the **stock Allwinner bootloader** (boot0/boot1 from your
factory card) and only replaces the kernel inside the stock "boot" partition
with our Linux 6.12 kernel + JD9366 display driver.

**Boot chain:**

```
A33 boot ROM ──reads LBA 16──▶  stock boot0/boot1 (factory, untouched)
stock U-Boot ──reads LBA 172032▶  Android boot image (our zImage + DTB)
Linux 6.12.41 ──mounts mmcblk0p1▶ ext4 rootfs (static BusyBox, init=/sbin/init)
```

---

## 1. What you need

| Item | Detail |
|---|---|
| microSD card | **≥ 1 GiB** (image is 1 GiB; the card is overwritten completely). |
| Card reader + host | Windows, macOS, or Linux |
| Flasher | Raspberry Pi Imager, balenaEtcher, Rufus (Windows), Win32DiskImager, or `dd` |

---

## 2. Building

```bash
./bootstrap.sh                 # once: downloads toolchain + kernel + busybox
./build.sh                     # builds output/firmware/ga36-stockboot.img
```

The stock boot chain is committed (`bootloader/ga36-stock-bootchain-128m.bin.gz`),
so no factory SD dump is needed. `package-stock.sh` self-verifies at build time
(boot0 eGON checksum, `ANDROID!` magic @172032, MBR signature, partition start).

---

## 3. Flashing instructions

The card does not need to be formatted first — the image replaces the entire
card including the partition table.

### Raspberry Pi Imager
1. **Choose OS** → scroll to bottom → **Use custom** → select `ga36-stockboot.img`.
2. **Choose Storage** → select the microSD card (verify it is the right disk!).
3. Click **Write**. Confirm the overwrite warning.

### balenaEtcher
1. **Flash from file** → select `ga36-stockboot.img`.
2. Select the target card → **Flash!** (ignore any "unrecognised" warning).

### Windows (Rufus / Win32DiskImager)
1. Rufus: Device = the card, select the `.img`, **Start**. Answer "write in
   DD image mode?" with **Yes**.
2. Win32DiskImager: select image, select device, **Write**.

### Linux (dd)
```sh
sudo dd if=output/firmware/ga36-stockboot.img of=/dev/sdX bs=4M conv=fsync status=progress
```
Replace `/dev/sdX` with the **card** device, never a partition (`/dev/sdX1`)
and never your system disk. Double-check with `lsblk` before running.

---

## 4. What to expect on first boot

- Backlight turns on (the stock bootloader's own splash appears first).
- The kernel loads from LBA 172032 and the JD9366 panel driver takes over:
  fbcon console on the LCD, and a getty login on **UART2 (PB00/PB01) 115200
  8N1** (`ttyS2`) — useful if the panel driver has a problem.
- Rootfs is the static-BusyBox ext4 (labelled `linux`), which blinks the
  backlight via `/sys/class/backlight` in `rcS` to prove userspace is up.

**If it stays stuck on the stock splash logo**, the kernel is not being
loaded: confirm `ANDROID!` sits at LBA **172032** (this was previously an
off-by-one; `package-stock.sh` now writes it there and verifies it).

---

## 5. Recovery procedure

The firmware lives **entirely on the microSD** — nothing is written to the
board's own storage. A failed boot cannot brick the console. Recovery is
always: **reflash the card from a host computer.**

1. Power off (hold the power button ~5 s, or wait for AXP low-power cut-off).
2. **Keep the original factory card safe** — it is your fallback and
   reference.
3. Reflash this image, or a rebuilt variant.

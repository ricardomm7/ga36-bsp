# GA36-MB V1.2 (R36S) — Complete Open-Source BSP

**Target**: Allwinner A33 (sun8iw5), 4× Cortex-A7, 1 GiB DDR3  
**Status**: ✅ Fully Reproducible — single command builds everything

---

## 🎯 Quick Start

```bash
# 1. Clone and enter
git clone https://github.com/your-org/my-image.git
cd my-image

# 2. Install host dependencies (Ubuntu/Debian)
sudo apt-get update && sudo apt-get install -y \
    git make gcc g++ curl tar xz-utils bzip2 patch sed awk grep find cpio gzip python3 \
    bison flex unzip libc6-dev-armhf-cross

# 3. One-time bootstrap (downloads all sources ~20 min)
./bootstrap.sh

# 4. Build everything (30–60 min)
./build.sh

# 5. Flash to SD card
sudo dd if=output/firmware/ga36-custom.img of=/dev/sdX bs=1M status=progress
```

---

## 📦 What Gets Built

| Component | Version | Source |
|-----------|---------|--------|
| U-Boot + SPL | 2025.07 | Denx FTP |
| Linux Kernel | 6.12.41 | kernel.org |
| Buildroot | 2025.02.1 | buildroot.org |
| BusyBox | 1.36.1 | busybox.net |
| Toolchain | Bootlin (prebuilt external: Buildroot rootfs 2024.05-1, U-Boot/Linux 2025.08-1) | bootlin.com |

**All downloaded by `bootstrap.sh` and Buildroot (`BR2_DL_DIR`) into `work/dl/` — fully offline after first run.**

---

## 📁 Project Structure

```
my-image/
├── bootstrap.sh              # One-time: downloads all sources
├── build.sh                  # Single build entry (both images): ./build.sh
├── REPRODUCIBILITY.md        # Complete audit report
├── board/ga36-mb-v1.2/       # Board-specific configs, DTS overlays, JD9366 driver
├── buildroot/                # Buildroot external tree
├── configs/                  # Buildroot defconfig + sources.env (versions)
├── dts/                      # Kernel DTS
├── extract/                  # Vendor artifacts (read-only, gitignored)
├── output/                   # Build artifacts (generated)
│   ├── firmware/ga36-custom.img    # Route B image (mainline U-Boot)
│   ├── firmware/ga36-stockboot.img # Route A image (stock bootloader + our kernel)
│   └── boot/                     # Kernel, DTB, initramfs, U-Boot
├── scripts/fw/               # Build scripts (all relative paths)
│   ├── env.sh
│   ├── build-uboot.sh
│   ├── build-linux.sh
│   ├── build-initramfs.sh
│   ├── build-buildroot.sh
│   ├── package-final.sh
│   ├── package-stock.sh      # Route A image (needs original/test.img)
│   ├── recover-lcd-dcs.sh    # re-extract hash-pinned DCS init from lcd.ko
│   ├── validate-image.sh
│   └── helpers/
│       ├── egon_check.py
│       └── mkbootimg.py
├── tools/forensics/          # Reverse-engineering scripts & artifacts (audit trail)
├── uboot/
│   ├── configs/ga36_mb_v1_2_defconfig
│   └── dts/sun8i-a33-ga36-mb-v1.2.dts
└── work/                     # Created by bootstrap.sh (not in git)
    ├── dl/                   # Download cache (bootstrap + Buildroot BR2_DL_DIR)
    ├── src/                  # Extracted sources
    ├── toolchain/            # Bootlin ARM cross-compiler
    ├── host/                 # Host tools (bison, flex, etc.)
    └── build/                # Build directories
```

---

## 🛠 Build Commands

```bash
# Full build (produces both images)
./build.sh

# Clean build
./build.sh --clean

# Individual components
./scripts/fw/build-uboot.sh
./scripts/fw/build-linux.sh
./scripts/fw/build-initramfs.sh
./scripts/fw/build-buildroot.sh
./scripts/fw/package-final.sh
./scripts/fw/package-stock.sh

# Validate final image
./scripts/fw/validate-image.sh output/firmware/ga36-custom.img
```

---

## 🔧 Hardware Support

| Feature | Status | Notes |
|---------|--------|-------|
| U-Boot SPL + U-Boot | ✅ | LBA 16 + LBA 80, eGON checksum valid |
| Linux 6.12.41 | ✅ | zImage + DTB |
| Initramfs (BusyBox) | ✅ | ttyS2 115200n8 |
| Buildroot + RetroArch | ✅ | Lima/MESA GPU |
| LCD 640×480 (JD9366 DSI) | 🟡 | fex: `lcd_if=4` (MIPI-DSI), 2 lanes, RGB888, dclk 30 MHz, ht 1040 / vt 518 — DRM panel driver + DSI wiring done (Route A), image ready to test on silicon |
| PWM Backlight | ✅ | PWM0 @ PH00, 20 kHz |
| AXP223 PMIC | ✅ | RSB, DCDC1-5 configured |
| UART2 Console | ✅ | PB00/PB01 @ 115200n8 |
| USB OTG | ✅ | PH08 ID detect, DRIVEVBUS |
| SD Card (MMC0) | ✅ | PF00-05, CD @ PB04 |
| Audio (Codec + Amp) | ✅ | PA enable @ PH09 |

---

## 🔌 SD Card Layout (`ga36-custom.img`, Route B)

| Region | LBA | Size | Content |
|--------|-----|------|---------|
| MBR | 0 | 1 sector | Partition table |
| **SPL + U-Boot** | **16** | **~260 KB** | `u-boot-sunxi-with-spl.bin` |
| Boot partition | 2048 | 64 MB | ext4: zImage, DTB, initramfs, boot.scr |
| Rootfs partition | 133120 | ~448 MB | ext4: Buildroot rootfs |

Route A (`ga36-stockboot.img`) has a different layout — see the Route A section above.

---

## 📚 Documentation

All documentation consolidated from `docs/`:

| File | Content |
|------|---------|
| `REPRODUCIBILITY.md` | Complete audit: all paths fixed, deps eliminated, how to build on clean machine |
| `docs/BUILD.md` | **Single build & reproducibility guide** (bootstrap + build, both images) |
| `docs/REVERSE_ENGINEERING.md` | Hardware validation checklist (UART, GPIO, LCD, OTG, etc.) |
| `docs/STATUS.md` | Bring-up status table |
| `docs/analysis.md` | Original firmware partition analysis |
| `docs/conclusions.md` | Forensic conclusions: A33 vs RK3326, AXP223, boot chain |
| `docs/hardware-notes.md` | Notebook for bench-proven facts |
| `docs/hardware-vs-firmware.md` | Forensic proof: firmware is A33, not RK3326 |
| `docs/spl-vs-boot0-audit.md` | SPL vs vendor boot0 register-by-register comparison |
| `docs/migration-plan.md` | (Referenced) Display bring-up plan |

---

## 🔍 Validation

```bash
# Verify image structure
./scripts/fw/validate-image.sh output/firmware/ga36-custom.img

# Expected output:
# - SPL eGON checksum: VALID
# - U-Boot legacy image @ LBA 80
# - Boot partition (ext4) @ LBA 2048
# - Rootfs partition (ext4) @ LBA 133120
```

Route A's `ga36-stockboot.img` self-verifies at build time (boot0 eGON,
`ANDROID!` magic @172032, MBR + partition start) — see the Route A section above.

---

## 🐛 Troubleshooting

| Issue | Solution |
|-------|----------|
| `bison: not found` | `sudo apt-get install bison flex` |
| `libc6-dev-armhf-cross not installed` | `sudo apt-get install libc6-dev-armhf-cross` |
| Toolchain extraction nested | `cd work/toolchain && mv armv7-eabihf--glibc--stable-2025.08-1/* . && rmdir ...` |
| Build fails on clean | `./build.sh --clean` |
| SPL checksum invalid | Check `egon_check.py` logic, verify eGON header at LBA 16 |

---

## ⚠️ Known Limitations

| Feature | Status | Notes |
|---------|--------|-------|
| SD2 (MMC1) | ❌ | Intentionally unassigned — needs GPIO validation |
| FN button | ❌ | GPIO wiring unknown — needs measurement |
| Touchscreen | ❌ | Controller unknown — needs measurement |
| WiFi/BT | ❌ | Hardware presence unknown |
| Display | 🟡 | JD9366 **MIPI-DSI**: vendor DCS extracted (hash-pinned), DRM panel driver `boe,jd9366` + DSI wiring complete. Test image: `output/firmware/ga36-stockboot.img` (Route A) |

---

## 🚀 Route A — stock bootloader + our kernel (display bring-up)

The factory boot chain (BROM → boot0/boot1 → stock U-Boot → Android `bootimg`)
is **kept intact**; we only replace the kernel inside the stock "boot"
partition. This is the fastest path to a display, and it is exactly how the
community GA36-MB Linux port boots (`docs/GA36-MB-Linux`).

```bash
# build kernel + android_boot.img (DTS + JD9366 driver installed automatically)
bash scripts/fw/build-linux.sh
# assemble the SD image from the stock dump
bash scripts/fw/package-stock.sh
```

**Image:** `output/firmware/ga36-stockboot.img` (1 GiB, `GA36_SD_SIZE_MB` overrides)

Layout (see `scripts/fw/package-stock.sh`):

| Region | LBA | Content |
|--------|-----|---------|
| MBR | 0 | standard MBR, 1 partition (ext4 rootfs @ 128 MiB) |
| stock boot chain | 1..262143 | copied verbatim from `original/test.img`: boot0@16, boot1@38192, sunxi MBR@40960, env@139264 |
| **Android boot image** | **172032** | our kernel (zImage + appended DTB), empty ramdisk |
| rootfs (ext4, busybox) | 262144 | `init=/sbin/init`, getty on ttyS2, labelled `linux` |

Kernel cmdline is forced (`CONFIG_CMDLINE_FORCE`): `root=/dev/mmcblk0p1
rootfstype=ext4 rootwait rw init=/sbin/init earlycon=uart,mmio32,0x01c28800
loglevel=8 panic=10`. The stock bootloader's own bootargs are ignored.

Flash exactly like any raw image (Raspberry Pi Imager / balenaEtcher / `dd`).
Expected on first boot: backlight on, fbcon console on the LCD, getty on UART2.

`package-stock.sh` self-verifies: boot0 eGON checksum, `ANDROID!` magic @
172032, MBR signature + partition start, env partition byte-identical to the
stock dump.

---


## 📜 License

This project is a clean-room BSP. No vendor blobs included. All sources downloaded from official upstreams.

---

## 📝 For Developers

### Adding a New Dependency
1. Add to `bootstrap.sh` check_system_deps()
2. Document in this README
3. Update `REPRODUCIBILITY.md`

### Modifying Build Flags
- U-Boot: `uboot/configs/ga36_mb_v1_2_defconfig`
- Kernel: `board/ga36-mb-v1.2/linux-ga36.config`
- Buildroot: `configs/ga36-mb-v1.2_defconfig`

### Updating Versions
Edit `scripts/fw/env.sh` — single source of truth for all versions.

---

*Generated from consolidated docs/ folder. See REPRODUCIBILITY.md for full audit.*
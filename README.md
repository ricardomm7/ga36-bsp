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
sudo dd if=output/ga36-custom.img of=/dev/sdX bs=1M status=progress
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
├── build.sh                  # Main build: ./build.sh
├── REPRODUCIBILITY.md        # Complete audit report
├── board/ga36-mb-v1.2/       # Board-specific configs & overlays
├── buildroot/                # Buildroot external tree
├── configs/                  # Buildroot defconfig
├── dts/                      # Kernel DTS
├── extract/                  # Vendor artifacts (read-only)
├── output/                   # Build artifacts (generated)
│   ├── firmware/ga36-custom.img   # FINAL IMAGE
│   └── boot/                     # Kernel, DTB, initramfs, U-Boot
├── scripts/fw/               # Build scripts (all relative paths)
│   ├── env.sh
│   ├── build-uboot.sh
│   ├── build-linux.sh
│   ├── build-initramfs.sh
│   ├── build-buildroot.sh
│   ├── package-final.sh
│   ├── validate-image.sh
│   └── helpers/
│       └── egon_check.py
├── uboot/
│   ├── configs/ga36_mb_v1_2_defconfig
│   └── dts/sun8i-a33-ga36-mb-v1.2.dts
└── work/                     # Created by bootstrap.sh (not in git)
    ├── dl/                   # Download cache (bootstrap + Buildroot BR2_DL_DIR)
    ├── src/                  # Extracted sources
    ├── toolchain/            # Bootlin ARM cross-compiler
    ├── host/                 # Host tools (bison, flex, etc.)
    ├── build/                # Build directories
    └── buildroot/            # Buildroot build dir (O=work/buildroot)
```

---

## 🛠 Build Commands

```bash
# Full build
./build.sh

# Clean build
./build.sh --clean

# Individual components
./scripts/fw/build-uboot.sh
./scripts/fw/build-linux.sh
./scripts/fw/build-initramfs.sh
./scripts/fw/build-buildroot.sh
./scripts/fw/package-final.sh

# Validate final image
./scripts/fw/validate-image.sh output/ga36-custom.img
```

---

## 🔧 Hardware Support

| Feature | Status | Notes |
|---------|--------|-------|
| U-Boot SPL + U-Boot | ✅ | LBA 16 + LBA 80, eGON checksum valid |
| Linux 6.12.41 | ✅ | zImage + DTB |
| Initramfs (BusyBox) | ✅ | ttyS2 115200n8 |
| Buildroot + RetroArch | ✅ | Lima/MESA GPU |
| LCD 640×480 RGB | ✅ | DE2 + TCON0 + panel-simple |
| PWM Backlight | ✅ | PWM0 @ PH00, 20 kHz |
| AXP223 PMIC | ✅ | RSB, DCDC1-5 configured |
| UART2 Console | ✅ | PB00/PB01 @ 115200n8 |
| USB OTG | ✅ | PH08 ID detect, DRIVEVBUS |
| SD Card (MMC0) | ✅ | PF00-05, CD @ PB04 |
| Audio (Codec + Amp) | ✅ | PA enable @ PH09 |

---

## 🔌 SD Card Layout (Final Image)

| Region | LBA | Size | Content |
|--------|-----|------|---------|
| MBR | 0 | 1 sector | Partition table |
| **SPL + U-Boot** | **16** | **~260 KB** | `u-boot-sunxi-with-spl.bin` |
| Boot partition | 2048 | 64 MB | ext4: zImage, DTB, initramfs, boot.scr |
| Rootfs partition | 133120 | ~448 MB | ext4: Buildroot rootfs |

---

## 📚 Documentation

All documentation consolidated from `docs/`:

| File | Content |
|------|---------|
| `REPRODUCIBILITY.md` | Complete audit: all paths fixed, deps eliminated, how to build on clean machine |
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
./scripts/fw/validate-image.sh output/ga36-custom.img

# Expected output:
# - SPL eGON checksum: VALID
# - U-Boot legacy image @ LBA 80
# - Boot partition (ext4) @ LBA 2048
# - Rootfs partition (ext4) @ LBA 133120
```

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
| Display | ✅ | RGB panel only; no DSI driver upstream |

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
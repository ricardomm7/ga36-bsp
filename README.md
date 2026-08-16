# GA36-MB V1.2 (R36S) — Linux BSP on the stock bootloader

**Target**: Allwinner A33 (sun8iw5), 4× Cortex-A7, 1 GiB DDR3  
**Status**: ✅ Fully Reproducible — single command builds the single image

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

# 3. One-time bootstrap (downloads all sources ~10 min)
./bootstrap.sh

# 4. Build everything (30–60 min)
./build.sh

# 5. Flash to SD card
sudo dd if=output/firmware/ga36-stockboot.img of=/dev/sdX bs=4M conv=fsync status=progress
```

---

## 📦 What Gets Built

| Component | Version | Source |
|-----------|---------|--------|
| Linux Kernel | 6.12.41 | kernel.org |
| BusyBox | 1.36.1 | busybox.net |
| Toolchain | Bootlin armv7-eabihf 2025.08-1 (prebuilt) | bootlin.com |

The stock Allwinner bootloader (boot0/boot1 from your factory card) is
**preserved intact** in the image; only the kernel inside the stock "boot"
partition is replaced with our Linux kernel. This is the fastest and safest
path to a display — exactly how the community GA36-MB port boots
([CodeZombie/GA36-MB-Linux](https://github.com/CodeZombie/GA36-MB-Linux)).

**All downloaded by `bootstrap.sh` into `work/dl/` — fully offline after first run.**

---

## 📁 Project Structure

```
my-image/
├── bootstrap.sh              # One-time: downloads all sources
├── build.sh                  # Single build entry: ./build.sh
├── cleanup.sh                # Targeted disk cleanup (keeps download cache)
├── CONTRIBUTING.md           # Contributor guide
├── board/ga36-mb-v1.2/       # Board-specific configs, JD9366 DCS init + driver
├── bmps/                     # Custom boot splash (injected into the boot chain)
├── bootloader/               # Stock 128 MiB boot chain (boot0/boot1/env/boot)
├── configs/                  # sources.env (pinned versions)
├── dts/                      # Kernel DTS
├── output/                   # Build artifacts (generated)
│   ├── firmware/ga36-stockboot.img   # THE image (stock bootloader + our kernel)
│   └── boot/                      # Kernel, DTB, initramfs, android_boot.img
├── scripts/fw/               # Build scripts (all relative paths)
│   ├── env.sh                    # versions + paths (single source of truth)
│   ├── build-linux.sh            # kernel + android_boot.img
│   ├── build-initramfs.sh        # busybox rootfs staging
│   ├── package-stock.sh          # assembles ga36-stockboot.img (self-verifying)
│   ├── bootstrap-env.sh          # toolchain + host tools bootstrap
│   ├── recover-lcd-dcs.sh        # re-extract hash-pinned DCS init from lcd.ko
│   ├── inject_splash.py          # custom boot logo injection
│   └── helpers/
│       ├── egon_check.py
│       └── mkbootimg.py
├── tools/forensics/          # Reverse-engineering scripts & artifacts (audit trail)
└── work/                     # Created by bootstrap.sh (not in git)
    ├── dl/                   # Download cache
    ├── src/                  # Extracted sources
    ├── toolchain/            # Bootlin ARM cross-compiler
    ├── host/                 # Host tools (bison, flex, etc.)
    └── build/                # Build directories
```

---

## 🛠 Build Commands

```bash
# Full build (produces ga36-stockboot.img)
./build.sh

# Clean build
./build.sh --clean

# Individual components
./scripts/fw/build-linux.sh        # kernel + zImage_with_dtb + android_boot.img
./scripts/fw/build-initramfs.sh    # busybox rootfs staging
./scripts/fw/package-stock.sh      # assemble the SD image (self-verifying)
```

---

## 🔧 Hardware Support

| Feature | Status | Notes |
|---------|--------|-------|
| Stock boot0/boot1 chain | ✅ | preserved verbatim in the image (boot0@16, boot1@38192) |
| Linux 6.12.41 | ✅ | zImage + appended DTB |
| Rootfs (BusyBox) | ✅ | ext4, ttyS2 115200n8 + tty1 |
| LCD 640×480 (JD9366 DSI) | ✅ | fex: `lcd_if=4` (MIPI-DSI), 2 lanes, RGB888, dclk 30 MHz — DRM panel driver + DSI wiring; kernel boots to fbcon on the LCD (Tux + boot log) |
| PWM Backlight | ✅ | PWM0 @ PH00, 20 kHz |
| AXP223 PMIC | ✅ | RSB, DCDC1-5 configured |
| UART2 Console | ✅ | PB00/PB01 @ 115200n8 |
| Input (16 buttons + FN) | ✅ | DTS gpio-keys `micro_gamepad` + `fn-key`; map recovered from the stock `udt_joystick.ko` (docs/migration-plan.md §8.1). Active-low + pull-up assumed — polarity unproven on silicon |
| USB OTG | ✅ | PH08 ID detect, DRIVEVBUS |
| SD Card (MMC0) | ✅ | PF00-05, CD @ PB04 |
| Audio (Codec + Amp) | ✅ | PA enable @ PH09 |

---

## 🔌 SD Card Layout (`ga36-stockboot.img`)

| Region | LBA | Content |
|--------|-----|---------|
| MBR | 0 | **factory DOS MBR** (byte-exact, `bootloader/ga36-stock-mbr.bin`) — this unit's boot1 requires it |
| stock boot chain | 1..262143 | committed `bootloader/ga36-stock-bootchain-128m.bin.gz`: boot0@16, boot1@38192, sunxi MBR@40960, env@139264, EBRs@1/2/4/8 |
| **Android boot image** | **172032** | our kernel (zImage + appended DTB), empty ramdisk |
| p8 storage (EBR) | 1286144..3383335 | untouched factory space (left as-is) |
| rootfs (ext4, busybox) | 3383336 | MBR P1 (factory "UDISK" slot) → `/dev/mmcblk0p1`, `init=/sbin/init`, getty on ttyS2, labelled `linux` |

Kernel cmdline is forced (`CONFIG_CMDLINE_FORCE`): `root=/dev/mmcblk0p1
rootfstype=ext4 rootwait rw init=/sbin/init earlycon=uart,mmio32,0x01c28800
loglevel=8 panic=10`. The stock bootloader's own bootargs are ignored.

Flash exactly like any raw image (Raspberry Pi Imager / balenaEtcher / `dd`).
Expected on first boot: backlight on, fbcon console on the LCD (Tux + boot
log), then the BusyBox shell (`init=/sbin/init`), getty on UART2.

`package-stock.sh` self-verifies at build time: factory MBR byte-exact, boot0
eGON checksum, `ANDROID!` magic @172032, P1 start + ext4 superblock.

---

## 📚 Documentation

| File | Content |
|------|---------|
| `docs/BUILD.md` | Single build & reproducibility guide |
| `docs/REVERSE_ENGINEERING.md` | Hardware validation checklist (UART, GPIO, LCD, OTG, etc.) |
| `docs/STATUS.md` | Bring-up status table |
| `docs/analysis.md` | Original firmware partition analysis |
| `docs/conclusions.md` | Forensic conclusions: A33 vs RK3326, AXP223, boot chain |
| `docs/hardware-notes.md` | Notebook for bench-proven facts |
| `docs/hardware-vs-firmware.md` | Forensic proof: firmware is A33, not RK3326 |
| `docs/spl-vs-boot0-audit.md` | Why the stock boot0 is kept (SPL vs vendor boot0 comparison) |
| `docs/migration-plan.md` | Display bring-up plan |
| `docs/GA36-MB-Linux/` | *(removed)* — reference now lives upstream |

Reference ports used as evidence (not vendored):
- [CodeZombie/GA36-MB-Linux](https://github.com/CodeZombie/GA36-MB-Linux) — community mainline kernel + DTS for this exact board (boot image at LBA 172032, `sun8i-a33-ga36mb-v12.dts`, `jd9366-ga36mbv1-2.c`).
- [madeiragab/darkos-ga36-port](https://github.com/madeiragab/darkos-ga36-port) — GA36-MB (A33) autopsy / preservation / hardware notes.

---

## 🐛 Troubleshooting

| Issue | Solution |
|-------|----------|
| `bison: not found` | `sudo apt-get install bison flex` |
| `libc6-dev-armhf-cross not installed` | `sudo apt-get install libc6-dev-armhf-cross` |
| Build fails on clean | `./build.sh --clean` |
| boot0 eGON checksum invalid | The boot chain is a fixed committed artifact (`bootloader/`); re-extract a clean copy from `git show HEAD:bootloader/...` or the factory dump |
| Kernel not loading (stuck on splash) | The boot image must be at LBA **172032** — `package-stock.sh` writes it there and verifies the `ANDROID!` magic |

---

## ⚠️ Known Limitations

| Feature | Status | Notes |
|---------|--------|-------|
| SD2 (MMC1) | ❌ | Intentionally unassigned — needs GPIO validation |
| Gamepad polarity | 🟡 | buttons/FN wired as **active-low** gpio-keys (R36S-family standard; map from the vendor `udt_joystick.ko`). If inputs report inverted on the bench, flip `GPIO_ACTIVE_LOW`↔`GPIO_ACTIVE_HIGH` in `dts/sun8i-a33-ga36-mb-v1.2.dts` and rebuild |
| Analog sticks | 🟡 | UART1 (PG06-09) frame decoder recovered from the vendor kernel (`A7 10 00` @ **9600** baud — migration-plan §8.2/§6); RX driver not written yet |
| Display | ✅ | JD9366 **MIPI-DSI** boots to **fbcon on silicon**: vendor DCS extracted (hash-pinned), DRM panel driver + DSI wiring complete. Test image: `output/firmware/ga36-stockboot.img` |

---

## 📜 License

GPL-2.0-only. This is a clean-room BSP: kernel, rootfs and build pipeline all
come from official upstreams (kernel.org, busybox.net, bootlin.com). The only
unmodified binary it ships is the **stock boot chain**
(`bootloader/ga36-stock-bootchain-128m.bin.gz` + `ga36-stock-mbr.bin`), which
must stay verbatim because this unit's boot1 only boots from its factory DOS
MBR and the factory boot0/boot1. The JD9366 init sequence is committed as
**data** (`board/ga36-mb-v1.2/jd9366_init.h`) recovered from the vendor
`lcd.ko` and hash-pinned — no executable vendor code is included.

---

## 📝 For Developers

### Modifying Build Flags
- Kernel: `board/ga36-mb-v1.2/linux-ga36.config` (canonical savedefconfig) + `kernel-ga36.config.fragment` (readable fragment)

### Updating Versions
Edit `scripts/fw/env.sh` — single source of truth for all versions (mirrored in `configs/sources.env`).

---
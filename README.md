# GA36-MB V1.2 (R36S) — Clean-Room Linux BSP

[![License: GPL-2.0](https://img.shields.io/badge/License-GPL%202.0-blue.svg)](LICENSE)
[![Linux: 6.12.41](https://img.shields.io/badge/Linux-6.12.41-green.svg)](https://kernel.org)
[![Target: Allwinner A33](https://img.shields.io/badge/SoC-Allwinner%20A33-orange.svg)](#-target-specifications)
[![Build: Reproducible](https://img.shields.io/badge/Build-100%25%20Reproducible-brightgreen.svg)](#-quick-start)

A fully reproducible, clean-room downstream Linux Board Support Package (BSP) for the **GA36-MB V1.2** handheld console (commonly sold as an R36S clone with an Allwinner A33 quad-core SoC).

> [!IMPORTANT]
> **Autonomous Boot Status**: The current BSP is **fully autonomous**. The console turns on, initializes memory, loads Linux 6.12.41 via the stock bootloader, powers on the JD9366 MIPI-DSI LCD screen via DRM fbcon, brings up backlight, mounts the ext4 rootfs, and drops into an interactive BusyBox shell on both the LCD screen (`tty1`) and serial console (`ttyS2`). No external cables or debuggers are needed to boot out-of-the-box.

> [!NOTE]
> **Gamepad & Buttons Status**: All 16 gamepad buttons and the FN key are **fully configured** in the Device Tree (`gpio-keys`) using GPIO mappings recovered forensically from the stock vendor kernel module (`udt_joystick.ko`). **Hardware testing on physical silicon is currently pending verification** (active-low with pull-up assumed). See [Gamepad Testing](#-gamepad--input-status) for instructions on how to test.

---

## 🎯 Quick Start

```bash
# 1. Clone repository
git clone https://github.com/ricardomeireles/ga36-bsp.git
cd ga36-bsp

# 2. One-time bootstrap: installs host dependencies and downloads all sources (~5-10 min)
./bootstrap.sh --install-deps

# 3. Build the bootable SD image (~15-30 min)
./build.sh

# 4. Flash image to microSD card (replace /dev/sdX with your card device)
sudo dd if=output/firmware/ga36-stockboot.img of=/dev/sdX bs=4M conv=fsync status=progress
```

---

## 🔍 Target Specifications

| Parameter | Specification | Notes |
|-----------|---------------|-------|
| **SoC** | Allwinner A33 (sun8iw5) | 4× ARM Cortex-A7 @ 1.2 GHz, Mali-400 MP2 |
| **RAM** | 512 MiB / 1 GiB DDR3 | Configured at 552 MHz (stock boot0 initialized) |
| **Display** | 3.5" IPS 640×480 | JD9366 controller, MIPI-DSI (2 data lanes, RGB888) |
| **PMIC** | X-Powers AXP223 | RSB interface (`0x3a3`), DCDC1-5 + LDOs |
| **Storage** | Single microSD (MMC0) | PF0-PF5 (4-bit bus), CD @ PB04 |
| **Audio** | Internal Codec + Speaker Amp | PA enable @ PH09 |
| **Controls** | 16 Buttons + FN + Dual Analog | Buttons on PE/PB gpio-keys; Analog MCU on UART1 @ 9600 baud |
| **Console** | UART2 (PB00/PB01) @ 115200 8N1 | Also mirrors to LCD `tty1` fbcon |

---

## 📦 What Gets Built

| Component | Version | Source | Role |
|-----------|---------|--------|------|
| **Linux Kernel** | 6.12.41 | [kernel.org](https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.41.tar.xz) | Mainline kernel + JD9366 DRM panel driver + DTS |
| **Rootfs** | BusyBox 1.36.1 | [busybox.net](https://busybox.net/downloads/busybox-1.36.1.tar.bz2) | Minimal static userland with interactive shell |
| **Toolchain** | GCC 2025.08-1 | [bootlin.com](https://toolchains.bootlin.com/) | Prebuilt `armv7-eabihf--glibc--stable-2025.08-1` |
| **Boot Chain** | Committed Stock | Factory ROM | Preserved factory boot0/boot1 + PhoenixCard DOS MBR |

The bootloader from the factory SD card is preserved intact in the first 128 MiB of the image. The kernel is packaged into an Android `boot.img` placed at sector **172032**, and rootfs is placed in MBR Partition 1 (sector **3383336**). This architecture guarantees an immediate, safe, and autonomous boot without any risk of bricking.

---

## 🔧 Hardware Support Matrix

| Feature | Status | Implementation Details |
|---------|--------|------------------------|
| **Autonomous Boot** | ✅ **CONFIRMED** | Boots autonomously via factory bootchain (boot0@16, boot1@38192) |
| **Mainline Linux 6.12** | ✅ **CONFIRMED** | Boots `zImage` with appended DTB (`sun8i-a33-ga36-mb-v1.2.dts`) |
| **LCD Display (640×480)** | ✅ **CONFIRMED** | JD9366 MIPI-DSI driver (`boe,jd9366`) + DRM TCON/DSI; Tux logo & fbcon log visible |
| **PWM Backlight** | ✅ **CONFIRMED** | PWM0 @ PH00, 20 kHz frequency, 50% default brightness |
| **AXP223 PMIC** | ✅ **CONFIRMED** | RSB bus communication, core power rails (DCDC1-5, ALDO2-3, DLDO3) |
| **Rootfs & Shell** | ✅ **CONFIRMED** | ext4 rootfs mounted as `/dev/mmcblk0p1`, interactive shell on LCD (`tty1`) & UART2 |
| **UART2 Debug Console** | ✅ **CONFIRMED** | PB00/PB01 @ 115200n8 (`ttyS2`) |
| **Gamepad Buttons (16+FN)** | 🟡 **CONFIGURED** | Configured in DTS via `gpio-keys` (`micro_gamepad` & `fn-key`). **Silicon testing pending** |
| **Analog Joysticks** | 🟡 **IN PROGRESS** | Protocol decoded (`A7 10 00` frame @ 9600 baud on UART1); input driver in development |
| **Audio (Codec + Amp)** | ✅ **CONFIGURED** | sun8i codec enabled, PA speaker amplifier enable on PH09 |
| **USB OTG** | ✅ **CONFIGURED** | OTG controller enabled, ID detect on PH08, AXP VBUS drive |
| **Secondary SD (SD2/MMC1)**| ❌ **UNASSIGNED** | Intentionally unassigned — pending board tracing |

---

## 🎮 Gamepad & Input Status

### Configured GPIO Button Mapping
The 16 gamepad buttons and the FN key are defined as `gpio-keys` in `dts/sun8i-a33-ga36-mb-v1.2.dts`. The mappings were recovered by disassembling the stock vendor driver `udt_joystick.ko`:

| Button | Linux Keycode | GPIO Pin | DT Node | Status |
|--------|---------------|----------|---------|--------|
| **DPAD Up** | `BTN_DPAD_UP` | `PE09` | `micro_gamepad` | Configured, Untested |
| **DPAD Down** | `BTN_DPAD_DOWN` | `PE08` | `micro_gamepad` | Configured, Untested |
| **DPAD Left** | `BTN_DPAD_LEFT` | `PE07` | `micro_gamepad` | Configured, Untested |
| **DPAD Right** | `BTN_DPAD_RIGHT` | `PE06` | `micro_gamepad` | Configured, Untested |
| **A** | `BTN_A` | `PE13` | `micro_gamepad` | Configured, Untested |
| **B** | `BTN_B` | `PE12` | `micro_gamepad` | Configured, Untested |
| **X** | `BTN_X` | `PE11` | `micro_gamepad` | Configured, Untested |
| **Y** | `BTN_Y` | `PE10` | `micro_gamepad` | Configured, Untested |
| **L1** | `BTN_TL` | `PE15` | `micro_gamepad` | Configured, Untested |
| **L2** | `BTN_TL2` | `PE14` | `micro_gamepad` | Configured, Untested |
| **R1** | `BTN_TR` | `PE17` | `micro_gamepad` | Configured, Untested |
| **R2** | `BTN_TR2` | `PE16` | `micro_gamepad` | Configured, Untested |
| **L3 (Thumb L)**| `BTN_THUMBL` | `PB03` | `micro_gamepad` | Configured, Untested |
| **R3 (Thumb R)**| `BTN_THUMBR` | `PB02` | `micro_gamepad` | Configured, Untested |
| **Select** | `BTN_SELECT` | `PE05` | `micro_gamepad` | Configured, Untested |
| **Start** | `BTN_START` | `PE04` | `micro_gamepad` | Configured, Untested |
| **FN** | `KEY_FN` | `PE01` | `fn-key` | Configured, Untested |

### How to Test on Hardware
Once booted into the BusyBox shell:
```bash
# 1. Verify that the input devices are registered
cat /proc/bus/input/devices

# 2. Check real-time events while pressing buttons
evtest /dev/input/event0

# 3. Check hardware interrupt counters
cat /proc/interrupts | grep -i pio
```

> **Polarity Inversion:** Buttons are configured as active-low (`GPIO_ACTIVE_LOW`) with internal pull-up resistors (`bias-pull-up`). If button presses report inverted (i.e. pressed when released), change `GPIO_ACTIVE_LOW` to `GPIO_ACTIVE_HIGH` in `dts/sun8i-a33-ga36-mb-v1.2.dts` and rebuild.

---

## 📁 Repository Structure

```
ga36-bsp/
├── bootstrap.sh              # One-time setup: downloads toolchain & all sources
├── build.sh                  # Single build entry: ./build.sh [--clean]
├── cleanup.sh                # Clean build caches while preserving download cache
├── CONTRIBUTING.md           # Contributor guidelines and verification rules
├── board/ga36-mb-v1.2/       # Board kernel configs, JD9366 DCS tables & driver
│   ├── jd9366-ga36mbv1-2.c   # DRM panel driver for JD9366
│   ├── jd9366_init.h         # Hash-pinned DCS initialization sequence
│   ├── kernel-ga36.config.fragment # Readable kernel configuration fragment
│   └── linux-ga36.config     # Full savedefconfig for Linux 6.12
├── bmps/                     # Custom boot splash bitmap (splash.bmp)
├── bootloader/               # Factory boot chain & MBR artifacts
│   ├── ga36-stock-bootchain-128m.bin.gz # Stock boot0/boot1/env
│   └── ga36-stock-mbr.bin    # Byte-exact factory DOS MBR
├── configs/                  # sources.env (version pinning)
├── docs/                     # Technical documentation & forensic reports
│   ├── BUILD.md              # Build & reproducibility guide
│   ├── FLASHING.md           # Detailed SD card flashing instructions
│   ├── STATUS.md             # Subsystem bring-up status tracker
│   ├── hardware-notes.md     # Bench-tested hardware findings notebook
│   └── migration-plan.md     # Display & hardware architecture notes
├── dts/                      # Device Tree source files
│   └── sun8i-a33-ga36-mb-v1.2.dts # Mainline DTS for GA36-MB V1.2
├── output/                   # Build output directory
│   └── firmware/ga36-stockboot.img # Final bootable SD card image
├── scripts/fw/               # Modular build scripts
│   ├── env.sh                # Path and version environment definitions
│   ├── build-linux.sh        # Kernel compilation & boot.img generation
│   ├── build-initramfs.sh    # BusyBox rootfs staging
│   └── package-stock.sh      # Image packaging and assertion verification
└── tools/forensics/          # Reverse-engineering scripts and disassembly tools
```

---

## 🔌 SD Card Partition Layout

The generated image (`output/firmware/ga36-stockboot.img`) strictly matches the factory layout required by the hardware:

| Region | LBA Offset | Size | Content / Function |
|--------|------------|------|--------------------|
| **MBR** | Sector 0 | 512 B | Factory DOS MBR (`bootloader/ga36-stock-mbr.bin`) |
| **Boot Chain** | Sectors 1..262143 | 128 MiB | Stock `boot0` (@16), `boot1` (@38192), `env` (@139264) |
| **Android Boot Image** | **Sector 172032** | 32 MiB | Linux 6.12.41 `zImage` + appended DTB (`boot.img`) |
| **Rootfs (ext4)** | **Sector 3383336** | ~1.4 GiB | MBR Partition 1 (`/dev/mmcblk0p1`), static BusyBox shell |

---

## 🤝 Contributing

Contributions are warmly welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting pull requests.

Key principles:
1. **The Bench-Proof Rule**: All hardware claims must be backed by logs, measurements, or forensic dumps.
2. **Bootchain Integrity**: Never modify the committed stock bootloader or factory MBR offsets.
3. **Explicit Status**: Always specify whether a feature is *Confirmed on Silicon* or *Configured/Untested*.

---

## 📜 License

This project is licensed under **GPL-2.0-only**, fully compatible with the Linux kernel. All firmware tools and drivers are clean-room implementations based on public documentation and clean reverse-engineering.
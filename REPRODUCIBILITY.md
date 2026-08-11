# Reproducibility Audit Report — GA36-MB V1.2 (R36S)

**Date**: 2026-08-06  
**Project**: my-image  
**Status**: ✅ Fully Reproducible

---

## Summary

This project is now **fully reproducible** on any clean Linux machine (x86_64) with no external dependencies. All sources, tools, and build artifacts are contained within the repository.

---

## Files Copied Into Repository

| File | Original Location | New Location | Purpose |
|------|-------------------|--------------|---------|
| `egon_check.py` | `/mnt/c/Users/ricar/AppData/Local/Temp/opencode/egon_check.py` | `scripts/fw/helpers/egon_check.py` | boot0 eGON checksum validation |
| `hdr.py` | `/mnt/c/Users/ricar/AppData/Local/Temp/opencode/hdr.py` | `scripts/fw/helpers/hdr.py` | Header dumper helper |
| `fex-embedded.bin` | `/mnt/c/Users/ricar/AppData/Local/Temp/opencode/fs/fex-embedded.bin` | `extract/boot/fex-embedded.bin` | Vendor FEX blob (input for decode) |

---

## Dependencies Eliminated

| Dependency | Before | After |
|------------|--------|-------|
| Toolchain | `/home/ricar/ga36fw/toolchain` | `work/toolchain/` (downloaded by bootstrap) |
| Linux source | `/home/ricar/ga36fw/src/linux-6.12.41` | `work/src/linux-6.12.41/` (downloaded by bootstrap) |
| BusyBox source | `/home/ricar/ga36fw/src/busybox-1.36.1` | `work/src/busybox-1.36.1/` (downloaded by bootstrap) |
| eGON checksum script | `/mnt/c/Users/ricar/AppData/Local/Temp/opencode/egon_check.py` | `scripts/fw/helpers/egon_check.py` |
| Header dumper | `/mnt/c/Users/ricar/AppData/Local/Temp/opencode/hdr.py` | `scripts/fw/helpers/hdr.py` |
| FEX decode input | `/mnt/c/Users/ricar/AppData/Local/Temp/opencode/fs/fex-embedded.bin` | `extract/boot/fex-embedded.bin` |
| Vendor LCD driver (analysis) | `work/squash/lcdroot/...` + ad-hoc scripts on this PC | `scripts/fw/recover-lcd-dcs.sh` + `scripts/fw/helpers/{lcd_dcs_extract.py,disasm_elf.py}`; committed DCS at `board/ga36-mb-v1.2/jd9366_init.h` |

---

## Paths Fixed

| File | Old Path | New Path |
|------|----------|----------|
| `scripts/fw/env.sh` | `FW_WORK="${GA36_FW_WORK:-/home/ricar/ga36fw}"` | `FW_WORK="${GA36_FW_WORK:-$ROOT/work}"` |
| `scripts/fex-decode.py` | `/mnt/c/Users/ricar/AppData/Local/Temp/opencode/fs/fex-embedded.bin` | `$ROOT_DIR/extract/boot/fex-embedded.bin` |
| `scripts/fex-decode.py` | `/mnt/c/Users/ricar/Downloads/r36s-files/my-image/output` | `$ROOT_DIR/output` |

---

## All Hardcoded Absolute Paths Removed

✅ No references to:
- `/home/ricar`
- `/mnt/c/Users`
- `/tmp`
- `/var/tmp`
- `AppData`
- `Temp`
- `%TEMP%`
- `%TMP%`
- `~/.cache`
- `~/.config`
- `~/.local`
- `C:\Users`
- `mktemp`
- `tempfile`

---

## New Files Created

| File | Purpose |
|------|---------|
| `bootstrap.sh` | Downloads all sources, toolchain, extracts to `work/` |
| `scripts/fw/helpers/egon_check.py` | boot0 eGON checksum validation (local copy) |
| `scripts/fw/helpers/hdr.py` | Header dumper helper (local copy) |
| `scripts/fw/recover-lcd-dcs.sh` | Regenerates the JD9366 DCS header from the read-only vendor image |
| `scripts/fw/helpers/lcd_dcs_extract.py` | Walks the DCS table inside the vendor `lcd.ko` (self-contained ELF parser, hash-pinned) |
| `scripts/fw/helpers/disasm_elf.py` | Capstone ARM disassembler for the vendor `lcd.ko` (no binutils needed) |
| `board/ga36-mb-v1.2/jd9366_init.h` | Committed JD9366 8" DCS init sequence (the display port input) |
| `REPRODUCIBILITY.md` | This report |

---

## Directory Structure (After Bootstrap)

```
my-image/
├── bootstrap.sh              # One-time setup: downloads all sources
├── build.sh                  # Main build: ./build.sh
├── board/ga36-mb-v1.2/       # Board-specific files (configs, JD9366 DCS init + driver)
├── bmps/                     # Custom boot splash
├── bootloader/               # Stock 128 MiB boot chain (boot0/boot1/env/boot)
├── configs/                  # sources.env (pinned versions)
├── dts/                      # Kernel DTS
├── extract/                  # Extracted vendor artifacts (read-only)
│   └── boot/fex-embedded.bin
├── output/                   # Build artifacts (generated)
│   ├── firmware/ga36-stockboot.img   # FINAL IMAGE
│   └── boot/                 # Kernel, DTB, initramfs, android_boot.img
├── scripts/
│   ├── fex-decode.py         # FEX decoder (relative paths)
│   └── fw/
│       ├── env.sh            # Build environment (relative paths)
│       ├── build-linux.sh
│       ├── build-initramfs.sh
│       ├── package-stock.sh
│       ├── bootstrap-env.sh
│       ├── inject_splash.py
│       └── helpers/
│           ├── egon_check.py
│           ├── hdr.py
│           ├── mkbootimg.py
│           └── lcd_dcs_extract.py
├── tools/forensics/          # Reverse-engineering scripts & artifacts
└── work/                     # Created by bootstrap.sh (not in git)
    ├── dl/                   # Download cache
    ├── src/                  # Extracted sources (linux-6.12.41, busybox-1.36.1)
    ├── toolchain/            # Bootlin ARM toolchain
    ├── host/                 # Host tools (m4, flex, bison, etc.)
    └── build/                # Build directories
```

---

## How to Build on a Clean Machine

```bash
# 1. Clone the repository
git clone https://github.com/your-org/my-image.git
cd my-image

# 2. Run bootstrap ONCE (downloads all sources, toolchain)
./bootstrap.sh

# 3. Build the complete firmware
./build.sh

# 4. Flash to SD card
sudo dd if=output/firmware/ga36-stockboot.img of=/dev/sdX bs=4M conv=fsync status=progress
```

### Prerequisites (Host System)

```bash
# Ubuntu/Debian
sudo apt-get update && sudo apt-get install -y \
    git make gcc g++ curl tar xz-utils bzip2 patch sed awk grep find cpio gzip python3 \
    libc6-dev-armhf-cross

# Fedora/RHEL
sudo dnf install -y \
    git make gcc gcc-c++ curl tar xz bzip2 patch sed awk grep find cpio gzip python3 \
    glibc-static-armhf-cross
```

---

## Verification

`package-stock.sh` self-verifies during the build:

```bash
./build.sh
# prints: boot0 eGON checksum VALID
#         ANDROID! magic @ LBA 172032 OK
#         MBR 0x55aa OK, partition 1 starts at sector 262144
```

---

## Vendor LCD driver recovery (DCS for the JD9366 8" panel)

The display port needs the exact init sequence the vendor firmware sends to
the JD9366 panel. That sequence is **committed** at
`board/ga36-mb-v1.2/jd9366_init.h`, so the build never depends on it being
re-extracted. If you ever need to re-derive it (or audit it against a fresh
acquisition of the original SD media), run:

```bash
# Needs: the read-only original image (original/test.img), plus host tools
# dd, debugfs (e2fsprogs), unsquashfs (squashfs-tools), python3.
# sudo apt install e2fsprogs squashfs-tools python3   (Ubuntu/Debian)
./scripts/fw/recover-lcd-dcs.sh
```

The script re-derives `board/ga36-mb-v1.2/jd9366_init.h` from
`original/test.img` via the read-only partition chain (dd → debugfs → SYSTEM
squashfs → `usr/lib/modules/lcd.ko` → DCS table). The `lcd.ko` sha256 is
pinned, so a changed firmware stops the run with an error. Everything is
relative to the repo root; nothing depends on a specific user account, home
directory or machine.

### Tooling notes

- `scripts/fw/helpers/lcd_dcs_extract.py` — self-contained ELF parser (no
  readelf) that locates `.data`, verifies the `jd9366_8inch` name string, and
  walks the 72-byte `LCM_setting_table` entries (cmd@0, count@4 u32 — 0xff
  end, 0xfe delay — para[64]@8).
- `scripts/fw/helpers/disasm_elf.py` — capstone ARM disassembler for the
  vendor module when no ARM binutils exist (`pip install capstone`).
- These replace the ad-hoc `work/*.py` scratch scripts and are the only
  analysis tooling that must be preserved.

---

## Offline Build

After the first run (with internet), all sources are cached in `work/dl/` and extracted in `work/src/`. Subsequent builds work **completely offline**:

```bash
# No internet required
./build.sh --clean
```

## External toolchain (why the Bootlin prebuilt is used)

The kernel and BusyBox are cross-compiled with the **Bootlin armv7-eabihf
2025.08-1** prebuilt toolchain, downloaded by `bootstrap.sh` into
`work/toolchain/` and pinned by URL + version in `scripts/fw/env.sh`. Using a
prebuilt toolchain avoids compiling glibc, which fails on a case-insensitive
filesystem (WSL mounting `/mnt/c` = NTFS): it fails at the final `ld.so` link
regardless of glibc version with confusing undefined symbols. To stay
reproducible on any host, no distro cross-compiler is required.

---

## Version Pinning

All versions are pinned in `scripts/fw/env.sh`:

```bash
LINUX_VERSION="6.12.41"
BUSYBOX_VERSION="1.36.1"
TOOLCHAIN_TARBALL="armv7-eabihf--glibc--stable-2025.08-1.tar.xz"
```

The vendor `lcd.ko` (source of the DCS) is sha256-pinned inside
`scripts/fw/helpers/lcd_dcs_extract.py` (`325e285f...a6fbc7`); a different
firmware revision fails the extraction instead of silently changing the DCS.

---

## Verification Checklist

- [x] No absolute paths in any script
- [x] No references to `/home`, `/tmp`, `/var/tmp`, `AppData`, `Temp`
- [x] All helper scripts copied into repo
- [x] All sources downloadable via `bootstrap.sh`
- [x] Toolchain downloaded and extracted locally
- [x] Build works offline after first run
- [x] Single command build: `./build.sh`
- [x] Single command setup: `./bootstrap.sh`
- [x] Final image at `output/firmware/ga36-stockboot.img`
- [x] Build-time self-verification: boot0 eGON, `ANDROID!` @172032, MBR

---

**Status**: ✅ **FULLY REPRODUCIBLE** — Ready for distribution.
# Build & reproducibility

This is the single source of truth for building the GA36-MB V1.2 (R36S) SDK
on any dev machine. There is exactly **one** dependency-fetch step and exactly
**one** build command, and it produces exactly **one** image.

## Host requirements

- **Linux or WSL** (bash + GNU coreutils: `dd`, `mke2fs`, `e2fsck`, `sfdisk`,
  `stat`, `truncate`). Windows native is not supported.
- Toolchain and kernel are built with the **Bootlin ARM prebuilt toolchain** —
  no distro cross-compiler needed.

## The two commands

```bash
# 1. One-time: fetch + extract all sources (network needed)
./bootstrap.sh                 # or --install-deps to install host packages

# 2. Build everything
./build.sh                     # or ./build.sh --clean for a from-scratch build
```

`build.sh` is the only build entry point. It produces:

| Image | Boot chain | Purpose |
|-------|-----------|---------|
| `output/firmware/ga36-stockboot.img` | stock boot0/boot1 + Android boot img + our kernel | **the image** (display bring-up) |

Pipeline: `build-linux.sh` → `build-initramfs.sh` → `package-stock.sh`.

### Prerequisite

The stock boot chain (boot0/boot1, sunxi MBR, env and the stock boot
partition) is **committed** in `bootloader/ga36-stock-bootchain-128m.bin.gz`
(128 MiB first-part image, extracted from the factory dump). The build is
fully self-contained: no external SD dump is required.

## Reproducibility guarantees

- **Pinned versions** (single source: `scripts/fw/env.sh`, mirrored in
  `configs/sources.env`): Linux 6.12.41, BusyBox 1.36.1, Bootlin armv7-eabihf
  2025.08-1.
- **Offline after first run**: every source archive lives in `work/dl/`.
  Rebuilds and `build.sh --clean` run fully offline.
- **All paths relative** to the repo root; `GA36_FW_WORK` overrides the work
  dir if you want it outside the tree.
- **Stock firmware provenance is committed**: the recovered fex, DCS init
  (`board/ga36-mb-v1.2/jd9366_init.h`, hash-pinned) and the boot chain
  (`bootloader/ga36-stock-bootchain-128m.bin.gz`) are checked in, so builds do
  not need the factory SD.
- **Verification is built in**: `package-stock.sh` checks the boot0 eGON
  checksum, the `ANDROID!` magic at LBA 172032, the MBR signature and the
  partition start.

## Cleaning

- `./build.sh --clean` — wipes build + output and rebuilds the image.
- `./cleanup.sh` — targeted disk cleanup (build caches, old images); keeps
  `work/dl` (download cache) for offline reproducibility.
- A build can never brick the board: firmware lives only on the SD card
  (reflash to recover). Nothing is written to the console's own storage.

## On a fresh machine, step by step

```bash
git clone <this-repo> && cd my-image
./bootstrap.sh --install-deps     # host deps + all sources
./build.sh                        # builds ga36-stockboot.img
```

Flash like any raw image (Raspberry Pi Imager / balenaEtcher / `dd`). See
`docs/STATUS.md` for the bring-up status and `docs/migration-plan.md` for the
display bring-up plan.

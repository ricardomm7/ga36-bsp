# Build & reproducibility

This is the single source of truth for building the GA36-MB V1.2 (R36S) SDK
on any dev machine. There is exactly **one** dependency-fetch step and exactly
**one** build command.

## Host requirements

- **Linux or WSL** (bash + GNU coreutils: `dd`, `mke2fs`, `e2fsck`, `sfdisk`,
  `stat`, `truncate`). Windows native is not supported.
- Toolchain, kernel and rootfs are built with the **Bootlin ARM prebuilt
  toolchain** — no distro cross-compiler needed.

## The two commands

```bash
# 1. One-time: fetch + extract all sources (network needed)
./bootstrap.sh                 # or --install-deps to install host packages

# 2. Build everything
./build.sh                     # or ./build.sh --clean for a from-scratch build
```

`build.sh` is the only build entry point. It produces both images:

| Image | Route | Boot chain | Purpose |
|-------|-------|-----------|---------|
| `output/firmware/ga36-custom.img` | B | mainline SPL+U-Boot 2025.07 (LBA16/80) | mainline bring-up |
| `output/firmware/ga36-stockboot.img` | A | stock boot0/boot1 + Android boot img + our kernel | **display bring-up** |

Pipeline: `build-uboot.sh` → `build-linux.sh` → `build-initramfs.sh` →
`package-final.sh` → `package-stock.sh`.

### Route A prerequisite

`ga36-stockboot.img` needs `original/test.img` — the **factory dump of your
card**. It is gitignored on purpose (it is your acquisition, not redistributed
here). If it is absent, `build.sh` skips Route A with a warning and still
builds `ga36-custom.img`.

## Reproducibility guarantees

- **Pinned versions** (single source: `scripts/fw/env.sh`, mirrored in
  `configs/sources.env`): Linux 6.12.41, U-Boot 2025.07, Buildroot 2025.02.1,
  BusyBox 1.36.1, Bootlin armv7-eabihf 2025.08-1.
- **Offline after first run**: every source archive lives in `work/dl/`
  (BR2_DL_DIR points there). Rebuilds and `build.sh --clean` run fully offline.
- **All paths relative** to the repo root; `GA36_FW_WORK` overrides the work
  dir if you want it outside the tree.
- **No vendor blobs in the repo**: the only external input is
  `original/test.img` (your own dump). The recovered fex, DCS init
  (`board/ga36-mb-v1.2/jd9366_init.h`, hash-pinned) and the boot chain
  recipe are committed.
- **Verification is built in**: `package-stock.sh` checks the boot0 eGON
  checksum, the `ANDROID!` magic, MBR signature and partition start;
  `validate-image.sh` checks the Route B image structure.

## Cleaning

- `./build.sh --clean` — wipes build + output and rebuilds both images.
- `./cleanup.sh` — targeted disk cleanup (build caches, old images, dead
  patches); keeps `work/dl` (download cache) for offline reproducibility.
- A build can never brick the board: firmware lives only on the SD card
  (reflash to recover). Nothing is written to the console's own storage.

## On a fresh machine, step by step

```bash
git clone <this-repo> && cd my-image
./bootstrap.sh --install-deps     # host deps + all sources
./build.sh                        # both images
# Route A additionally:
#   copy your factory dump to original/test.img   (gitignored)
#   ./build.sh --clean                            # or just: ./scripts/fw/package-stock.sh
```

Flash both images like any raw image (Raspberry Pi Imager / balenaEtcher /
`dd`). See `docs/STATUS.md` for the bring-up status and backlight beacon
protocol, and `docs/migration-plan.md` for the display bring-up plan.

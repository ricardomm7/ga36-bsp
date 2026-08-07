# Original firmware analysis

Generated: 2026-08-05T21:29:09Z

## Source integrity

size=15634268160 bytes; mtime=2026-08-05 12:03:37.717225300 +0100
SHA256 not calculated (run VERIFY_FULL_HASH=1 ./extract.sh).

## Partition table

```text
Disk /mnt/c/users/ricar/downloads/r36s-files/my-image/test.img: 14.56 GiB, 15634268160 bytes, 30535680 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xdf675905

Device                                                     Boot   Start      End  Sectors  Size Id Type
/mnt/c/users/ricar/downloads/r36s-files/my-image/test.img1      3383336 30349310 26965975 12.9G  b W95 FAT32
/mnt/c/users/ricar/downloads/r36s-files/my-image/test.img2 *      73728   139263    65536   32M  6 FAT16
/mnt/c/users/ricar/downloads/r36s-files/my-image/test.img3            1  3383336  3383336  1.6G 85 Linux extended
/mnt/c/users/ricar/downloads/r36s-files/my-image/test.img5       139264   172031    32768   16M 83 Linux
/mnt/c/users/ricar/downloads/r36s-files/my-image/test.img6       172032   237567    65536   32M 83 Linux
/mnt/c/users/ricar/downloads/r36s-files/my-image/test.img7       237568  1286143  1048576  512M 83 Linux
/mnt/c/users/ricar/downloads/r36s-files/my-image/test.img8      1286144  3383335  2097192    1G 83 Linux

Partition table entries are not in disk order.
```

## Recognised embedded formats

```text
Skipped full-image binwalk; set SCAN_FULL_IMAGE=1 to enable.
```

## Rockchip / bootloader strings

```text
```

## Extracted partition formats

```text
/mnt/c/users/ricar/downloads/r36s-files/my-image/extract/boot/sector-0-16MiB.bin:   DOS/MBR boot sector; partition 1 : ID=0xb, start-CHS (0x0,0,0), end-CHS (0x0,0,0), startsector 3383336, 26965975 sectors; partition 2 : ID=0x6, active, start-CHS (0x0,0,0), end-CHS (0x0,0,0), startsector 73728, 65536 sectors; partition 3 : ID=0x85, start-CHS (0x0,0,0), end-CHS (0x0,0,0), startsector 1, 3383336 sectors
/mnt/c/users/ricar/downloads/r36s-files/my-image/extract/partitions/boot-fat16.img: , code offset 0+3, OEM-ID "        ", sectors/cluster 4, root entries 512, Media descriptor 0xf8, sectors/FAT 256, sectors/track 0, sectors 262144 (volumes > 32 MB), dos < 4.0 BootSector (0), FAT (16 bit)
/mnt/c/users/ricar/downloads/r36s-files/my-image/extract/partitions/linux-16m.img:  OpenPGP Public Key
/mnt/c/users/ricar/downloads/r36s-files/my-image/extract/partitions/linux-32m.img:  Android bootimg, kernel (0x40008000), ramdisk (0x41000000), page size: 2048, cmdline (console=ttyS2,115200 root=/dev/mmcblk0p7 init=/init disk=/dev/mmcblk0p8 ion_cma_512m=8m ion_cma_1g=176m ion_carveout_512m=0m io)
```

## Device trees recovered


## Limits of static analysis

GPIO-to-connector wiring, FN polarity, SD2 card-detect and OTG VBUS/ID wiring require UART and electrical validation. No values have been inferred.

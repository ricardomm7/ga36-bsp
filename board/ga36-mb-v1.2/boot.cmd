# GA36-MB V1.2 boot script (source for boot.scr via mkimage).
# Runs from the default U-Boot bootcmd, which loads this file to 0x41900000
# and `source`s it. Uses the sunxi default env addresses for A33:
#   kernel_addr_r=0x41000000, fdt_addr_r=0x41800000, ramdisk_addr_r=0x41c00000
# Debug console: UART2 (PB00/PB01) at 115200 8N1.

echo "== GA36 boot =="
setenv bootargs console=ttyS2,115200n8 root=/dev/ram0 rw panic=10
load mmc 0:1 ${kernel_addr_r} /boot/zImage
load mmc 0:1 ${fdt_addr_r} /boot/sun8i-a33-ga36-mb-v1.2.dtb
load mmc 0:1 ${ramdisk_addr_r} /boot/initramfs.cpio.gz
bootz ${kernel_addr_r} ${ramdisk_addr_r}:${filesize} ${fdt_addr_r}

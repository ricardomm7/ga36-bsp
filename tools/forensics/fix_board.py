import os
path = os.path.expanduser('~/r36s-fw-work/src/u-boot-2025.07/board/sunxi/board.c')
with open(path, 'r') as f:
    content = f.read()

target = """	printf("DRAM:");
	gd->ram_size = sunxi_dram_init();
	printf(" %d MiB\\n", (int)(gd->ram_size >> 20));"""

replacement = """#ifdef CONFIG_GA36_BACKLIGHT_BEACON
	pmic_bus_setbits(0x12, (1U << 7));	/* AXP DC1SW: LCD power rail */
	clrsetbits_le32(GA36_PIO_PH_BASE, 0xf, SUNXI_GPIO_OUTPUT);
#endif

	printf("DRAM:");
	gd->ram_size = sunxi_dram_init();
	printf(" %d MiB\\n", (int)(gd->ram_size >> 20));
#ifdef CONFIG_GA36_BACKLIGHT_BEACON
	ga36_backlight_set(1);
#endif"""

content = content.replace(target, replacement)

with open(path, 'w') as f:
    f.write(content)

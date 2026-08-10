import os
path = os.path.expanduser('~/r36s-fw-work/src/u-boot-2025.07/board/sunxi/board.c')
with open(path, 'r') as f:
    content = f.read()

target = """#ifdef CONFIG_GA36_BACKLIGHT_BEACON
	pmic_bus_setbits(0x12, (1U << 7));	/* AXP DC1SW: LCD power rail */
	clrsetbits_le32(GA36_PIO_PH_BASE, 0xf, SUNXI_GPIO_OUTPUT);
#endif

	printf("DRAM:");
	gd->ram_size = sunxi_dram_init();
	printf(" %d MiB\\n", (int)(gd->ram_size >> 20));
#ifdef CONFIG_GA36_BACKLIGHT_BEACON
	ga36_backlight_set(1);
#endif"""

replacement = """	printf("DRAM:");
	gd->ram_size = sunxi_dram_init();
	printf(" %d MiB\\n", (int)(gd->ram_size >> 20));"""

content = content.replace(target, replacement)

# Now inject the beacon AFTER axp_init!
target2 = """#if defined CONFIG_AXP221_POWER || defined CONFIG_AXP809_POWER || \\
	defined CONFIG_AXP818_POWER
	power_failed = axp_init();"""

replacement2 = """#if defined CONFIG_AXP221_POWER || defined CONFIG_AXP809_POWER || \\
	defined CONFIG_AXP818_POWER
	power_failed = axp_init();

#ifdef CONFIG_GA36_BACKLIGHT_BEACON
	/* Init PMIC early for LCD power rail */
	pmic_bus_setbits(0x12, (1U << 7));
	/* Set PH0 to output */
	clrsetbits_le32(GA36_PIO_PH_BASE, 0xf, SUNXI_GPIO_OUTPUT);
	
	/* Blink forever BEFORE DRAM init to prove SPL runs and backlight works */
	while (1) {
		ga36_backlight_set(1);
		mdelay(100);
		ga36_backlight_set(0);
		mdelay(100);
	}
#endif
"""
content = content.replace(target2, replacement2)

with open(path, 'w') as f:
    f.write(content)

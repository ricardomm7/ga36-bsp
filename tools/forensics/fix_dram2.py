import os
board_c = os.path.expanduser('~/r36s-fw-work/src/u-boot-2025.07/board/sunxi/board.c')
dram_c = os.path.expanduser('~/r36s-fw-work/src/u-boot-2025.07/arch/arm/mach-sunxi/dram_sun8i_a33.c')

# 1. Restore board.c
with open(board_c, 'r') as f:
    b_content = f.read()

target_remove = """#ifdef CONFIG_GA36_BACKLIGHT_BEACON
	/* Init PMIC early for LCD power rail */
	pmic_bus_setbits(0x12, (1U << 7));
	/* Set PH0 to output */
	clrsetbits_le32(GA36_PIO_PH_BASE, 0xf, SUNXI_GPIO_OUTPUT);
	
	/* Blink forever BEFORE DRAM init to prove SPL runs and backlight works */
	while (1) {
		ga36_backlight_set_spl(1);
		mdelay(100);
		ga36_backlight_set_spl(0);
		mdelay(100);
	}
#endif"""

b_content = b_content.replace(target_remove, "")

target_beacon = """	printf("DRAM:");
	gd->ram_size = sunxi_dram_init();
	printf(" %d MiB\\n", (int)(gd->ram_size >> 20));"""

replacement_beacon = """	printf("DRAM:");
	gd->ram_size = sunxi_dram_init();
	printf(" %d MiB\\n", (int)(gd->ram_size >> 20));

#ifdef CONFIG_GA36_BACKLIGHT_BEACON
	pmic_bus_setbits(0x12, (1U << 7));
	clrsetbits_le32(GA36_PIO_PH_BASE, 0xf, SUNXI_GPIO_OUTPUT);
	ga36_backlight_set_spl(1);
	mdelay(200);
	ga36_backlight_set_spl(0);
	mdelay(200);
	ga36_backlight_set_spl(1);
	mdelay(200);
	ga36_backlight_set_spl(0);
#endif
"""

if target_beacon in b_content:
    b_content = b_content.replace(target_beacon, replacement_beacon)

with open(board_c, 'w') as f:
    f.write(b_content)

# 2. Fix dram_sun8i_a33.c
with open(dram_c, 'r') as f:
    d_content = f.read()

target_dram = """	struct dram_para para = {
		.cs1 = 0,
		.bank = 1,
		.rank = 2,
		.rows = 15,
		.bus_width = 16,
		.page_size = 2048,
	};"""

replacement_dram = """	struct dram_para para = {
		.cs1 = 0,
		.bank = 1,
		.rank = 1,
		.rows = 15,
		.bus_width = 16,
		.page_size = 2048,
	};"""
d_content = d_content.replace(target_dram, replacement_dram)

target_auto = """	/* Disable auto detect, force factory values to prevent memory probe crash */
	// auto_detect_dram_size(&para);
	para.page_size = 2048;
	para.rows = 15;
	para.rank = 1;
	para.bus_width = 16;"""

replacement_auto = """	/* ENABLE auto detect, the factory firmware uses it and relies on it! */
	auto_detect_dram_size(&para);"""
d_content = d_content.replace(target_auto, replacement_auto)

with open(dram_c, 'w') as f:
    f.write(d_content)


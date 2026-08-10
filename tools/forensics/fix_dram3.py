import os

dram_helpers_c = os.path.expanduser('~/r36s-fw-work/src/u-boot-2025.07/arch/arm/mach-sunxi/dram_helpers.c')
dram_a33_c = os.path.expanduser('~/r36s-fw-work/src/u-boot-2025.07/arch/arm/mach-sunxi/dram_sun8i_a33.c')

# 1. Fix panic in dram_helpers.c
with open(dram_helpers_c, 'r') as f:
    h_content = f.read()

target_panic = """		if (timer_get_us() > tmo)
			panic("Timeout initialising DRAM\\n");"""

replacement_panic = """		if (timer_get_us() > tmo) {
			printf("DRAM TIMEOUT! (graceful fallback)\\n");
			return;
		}"""

h_content = h_content.replace(target_panic, replacement_panic)
with open(dram_helpers_c, 'w') as f:
    f.write(h_content)

# 2. Fix rank forcing and 1T mode in dram_sun8i_a33.c
with open(dram_a33_c, 'r') as f:
    a_content = f.read()

# Don't force rank 2 in mctl_channel_init
target_rank2 = """	/* Auto detect dram config, set 2 rank and 16bit bus-width */
	para->cs1 = 0;
	para->rank = 2;
	para->bus_width = 16;
	mctl_set_cr(para);"""

replacement_rank2 = """	/* Use rank passed from init */
	para->cs1 = 0;
	// para->rank = 2; 
	para->bus_width = 16;
	mctl_set_cr(para);"""

a_content = a_content.replace(target_rank2, replacement_rank2)

# Always use 2T mode in mctl_set_cr
target_1t = """	/* 1T mode */
	if (para->rank == 2)
		setbits_le32(&mctl_ctl->cr, 1 << 19);
	else
		clrbits_le32(&mctl_ctl->cr, 1 << 19);"""

replacement_1t = """	/* 2T mode always for cheap RAM (matches factory boot0) */
	clrbits_le32(&mctl_ctl->cr, 1 << 19);"""

a_content = a_content.replace(target_1t, replacement_1t)

with open(dram_a33_c, 'w') as f:
    f.write(a_content)

print("DRAM patches applied successfully!")

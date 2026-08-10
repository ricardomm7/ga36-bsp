import sys
import re

with open(sys.argv[1], 'r') as f:
    content = f.read()

content = re.sub(r'u8\s+tccd\s*=\s*2;.*u16\s+trfc\s*=\s*ns_to_t\(350\);',
"""/* Hardcoded timings extracted from factory boot0 (eGON.BT0) for cheap RAM */
	u32 factory_tpr0 = 0x2ab83def;
	u32 factory_tpr1 = 0x18082356;
	u32 factory_tpr2 = 0x34156;

	u8 tccd		= (factory_tpr0 >> 21) & 0x7;
	u8 tfaw		= (factory_tpr0 >> 15) & 0x3f;
	u8 trrd		= (factory_tpr0 >> 11) & 0xf;
	u8 trcd		= (factory_tpr0 >> 6) & 0x1f;
	u8 trc		= (factory_tpr0 >> 0) & 0x3f;

	u8 txp		= (factory_tpr1 >> 23) & 0x1f;
	u8 twtr		= (factory_tpr1 >> 20) & 0x7;
	u8 trtp		= (factory_tpr1 >> 15) & 0x1f;
	u8 twr		= (factory_tpr1 >> 11) & 0xf;
	u8 trp		= (factory_tpr1 >> 6) & 0x1f;
	u8 tras		= (factory_tpr1 >> 0) & 0x3f;

	u16 trfc	= (factory_tpr2 >> 12) & 0x1ff;
	u16 trefi	= (factory_tpr2 >> 0) & 0xfff;""", content, flags=re.DOTALL)

content = re.sub(r'writel\(MCTL_MR0, &mctl_ctl->mr0\);\s*writel\(MCTL_MR1, &mctl_ctl->mr1\);\s*writel\(MCTL_MR2, &mctl_ctl->mr2\);\s*writel\(MCTL_MR3, &mctl_ctl->mr3\);',
"""writel(0x1a50, &mctl_ctl->mr0);
	writel(0x4, &mctl_ctl->mr1);
	writel(0x10, &mctl_ctl->mr2);
	writel(0x0, &mctl_ctl->mr3);""", content)

with open(sys.argv[1], 'w') as f:
    f.write(content)
print("Replaced successfully")

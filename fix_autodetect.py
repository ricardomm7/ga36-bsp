import sys
import re

with open(sys.argv[1], 'r') as f:
    content = f.read()

content = re.sub(r'auto_detect_dram_size\(&para\);',
"""/* Disable auto detect, force factory values to prevent memory probe crash */
	// auto_detect_dram_size(&para);
	para.page_size = 2048;
	para.rows = 15;
	para.rank = 1;
	para.bus_width = 16;
	para.bank = 1;
	para.cs1 = 0;
	mctl_set_cr(&para);""", content)

with open(sys.argv[1], 'w') as f:
    f.write(content)
print("Replaced auto_detect successfully")

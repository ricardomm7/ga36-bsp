import struct
import sys

def parse_boot0():
    with open('boot0.bin', 'rb') as f:
        data = f.read()

    # Search for dram_clk = 552 (0x02280000 in little endian -> 28 02 00 00)
    # dram_type = 3 (03 00 00 00)
    # dram_zq = 0x3bd5 (d5 3b 00 00)
    
    # Pack the signature to search
    sig = struct.pack('<III', 552, 3, 0x3bd5)
    
    idx = data.find(sig)
    if idx == -1:
        print("Could not find dram_para signature in boot0.bin")
        # Let's try searching just for 552 and 3
        sig2 = struct.pack('<II', 552, 3)
        idx = data.find(sig2)
        if idx == -1:
            print("Could not find even clk and type.")
            sys.exit(1)
            
    print(f"Found dram_para struct at offset {hex(idx)}")
    
    # dram_para in sun8i has 24 to 32 uint32_t words.
    # Let's extract 32 words (128 bytes)
    struct_data = data[idx:idx+128]
    words = struct.unpack('<' + 'I'*32, struct_data)
    
    names = [
        "dram_clk", "dram_type", "dram_zq", "dram_odt_en", 
        "dram_para1", "dram_para2", 
        "dram_mr0", "dram_mr1", "dram_mr2", "dram_mr3",
        "dram_tpr0", "dram_tpr1", "dram_tpr2", "dram_tpr3",
        "dram_tpr4", "dram_tpr5", "dram_tpr6", "dram_tpr7",
        "dram_tpr8", "dram_tpr9", "dram_tpr10", "dram_tpr11",
        "dram_tpr12", "dram_tpr13"
    ]
    
    for i, w in enumerate(words):
        name = names[i] if i < len(names) else f"unknown_{i}"
        print(f"[{i:2}] {name:15}: {hex(w)}")

if __name__ == '__main__':
    parse_boot0()

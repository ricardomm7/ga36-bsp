import struct, sys
with open('stock_hdr.bin', 'rb') as f:
    hdr = f.read(1632)
magic, k_size, k_addr, r_size, r_addr, s_size, s_addr, t_addr, p_size = struct.unpack('<8sIIIIIIII', hdr[:40])
name = struct.unpack('<16s', hdr[48:64])[0].decode('utf-8', 'ignore').strip('\x00')
cmdline = struct.unpack('<512s', hdr[64:576])[0].decode('utf-8', 'ignore').strip('\x00')
print(f'Magic: {magic}')
print(f'Kernel: size={k_size}, addr={hex(k_addr)}')
print(f'Ramdisk: size={r_size}, addr={hex(r_addr)}')
print(f'Second: size={s_size}, addr={hex(s_addr)}')
print(f'Tags: addr={hex(t_addr)}')
print(f'Page size: {p_size}')
print(f'Name: {name}')
print(f'Cmdline: {cmdline}')

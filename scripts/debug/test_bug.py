import gzip

with gzip.open('bootloader/ga36-stock-bootchain-128m.bin.gz', 'rb') as f:
    data = f.read()

idx = 0
while True:
    idx = data.find(b'sys_config', idx)
    if idx == -1: break
    print('Found sys_config at', idx)
    idx += 1

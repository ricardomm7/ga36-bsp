# Contributing to GA36-MB V1.2 BSP

Thank you for your interest in contributing to the **GA36-MB V1.2 (Allwinner A33)** Linux Board Support Package (BSP)!

This project is a clean-room, reproducible downstream BSP aiming to bring modern Mainline Linux (6.12+) and a fully functional open-source stack to the GA36-MB V1.2 handheld console (commonly sold as an R36S clone with an Allwinner A33 SoC).

---

## 🧭 Project Architecture & Philosophy

1. **Clean-Room & Upstream-First**:
   - The kernel is built from official kernel.org releases with minimal board-specific additions.
   - Rootfs is built from official BusyBox releases.
   - All external toolchains and sources are fetched automatically with verified versions and checksums.
2. **Stock Bootchain Coexistence**:
   - The project intentionally preserves the factory Allwinner boot chain (boot0/boot1 at sectors 1..262143) and the byte-exact factory DOS MBR.
   - The Linux kernel is delivered as an Android boot image (`boot.img`) at LBA 172032, and rootfs resides in MBR Partition 1 (`/dev/mmcblk0p1`).
   - This ensures 100% autonomous booting without risk of bricking the console hardware.
3. **Reproducibility Over Magic**:
   - A single command (`./build.sh`) must build the complete firmware image.
   - All paths are relative. Offline rebuilds are guaranteed once `work/dl/` is populated.

---

## 📜 Contribution Rules

### Rule 1: The Bench-Proof Rule (Evidence-Based Engineering)
- **Static analysis ≠ Silicon proof**: Decompilation, disassembly, or reading `.fex` files produces a *hypothesis*, not a proven hardware fact.
- Every pull request that introduces or changes GPIO pinout, clocks, regulators, or timings **must cite reproducible evidence**:
  - Bench measurements (multimeter voltage, logic analyzer trace, oscilloscope readings).
  - Kernel runtime logs (`dmesg`, `/proc/interrupts`, `evtest`, `/sys` attributes).
  - Forensic dumps from `tools/forensics/` with exact source references.
- **Never guess**: Do not copy pinouts or configs from unrelated boards (e.g. Rockchip RK3326 R36S units) simply because the plastic shell looks identical.

### Rule 2: Bootloader & Partition Safety
- **Do not alter the committed factory bootloader artifacts**:
  - `bootloader/ga36-stock-bootchain-128m.bin.gz` (sectors 1..262143).
  - `bootloader/ga36-stock-mbr.bin` (sector 0, byte-exact DOS MBR).
- The stock bootloader requires this exact layout. Modifying sector 0 or the bootloader offset will cause silent boot hangs.
- All packaging logic in `scripts/fw/package-stock.sh` must maintain strict self-verifying assertions (`ANDROID!` magic at 172032, valid eGON checksum, MBR signature `0xaa55`, ext4 superblock `0xef53`).

### Rule 3: Explicit Testing Status
When contributing new device drivers or device tree nodes, explicitly classify the feature status:
- **CONFIRMED ON SILICON**: Tested on physical hardware with logs/evidence provided.
- **CONFIGURED BUT UNTESTED**: Mapped according to reverse-engineering or vendor sources, but not yet verified on bench hardware.
- **UNASSIGNED / PLACEHOLDER**: Unknown hardware pins must remain disabled rather than guessing.

---

## 🎮 Hardware Testing Protocols

If you have physical hardware, here is how you can help test and validate subsystems:

### Testing Gamepad Buttons (gpio-keys)
The 16 gamepad buttons (`micro_gamepad`) and FN key (`fn-key`) are currently mapped in `dts/sun8i-a33-ga36-mb-v1.2.dts` based on reverse-engineered vendor drivers (`udt_joystick.ko`), assuming active-low logic with internal pull-ups:
```bash
# 1. Verify input devices are recognized
cat /proc/bus/input/devices

# 2. Monitor button press events in real-time
evtest /dev/input/event0   # or /dev/input/event1

# 3. Check interrupt counters incrementing when pressing buttons
cat /proc/interrupts | grep -i 'gpio\|pio'
```
> **Note on Polarity:** If buttons register as continuously pressed and release when pressed physically, the hardware is active-high. In that case, invert `GPIO_ACTIVE_LOW` to `GPIO_ACTIVE_HIGH` in `dts/sun8i-a33-ga36-mb-v1.2.dts` and report your findings.

### Testing Analog Sticks (UART1 RX Protocol)
The analog joysticks communicate over UART1 (PG06-PG09) using a 3-byte binary frame (`A7 10 00` header at 9600 baud). If you are writing or testing the analog stick driver:
```bash
# Verify raw serial data from analog microcontroller
stty -F /dev/ttyS1 9600 raw -echo
hexdump -C < /dev/ttyS1
```

### Testing Audio Output
```bash
# Test speaker amplifier and headphone jack
speaker-test -t sine -f 440 -c 2
```

---

## 🛠️ Development & Pull Request Workflow

1. **Fork the Repository**:
   ```bash
   git clone https://github.com/your-username/ga36-bsp.git
   cd ga36-bsp
   ```

2. **Set Up Build Environment**:
   ```bash
   ./bootstrap.sh --install-deps
   ```

3. **Create a Feature Branch**:
   ```bash
   git checkout -b feat/analog-stick-driver
   # or
   git checkout -b fix/button-polarity
   ```

4. **Directory Structure Guidelines**:
   - Board-specific DTS files go in `dts/`.
   - Kernel drivers and board configs go in `board/ga36-mb-v1.2/`.
   - Build system logic goes in `scripts/fw/`.
   - Forensic analysis and disassembly scripts go in `tools/forensics/`.
   - Keep the repository root clean and free of scratch files or personal dumps.

5. **Commit Message Format (Conventional Commits)**:
   Use clear, imperative commit messages:
   - `feat(dts): add battery ADC fuel gauge node`
   - `fix(input): correct D-pad GPIO active level to active-high`
   - `docs(status): document silicon validation for audio codec`
   - `refactor(build): simplify initramfs staging reuse`

6. **Submit a Pull Request**:
   - Provide a clear summary of what changed.
   - Attach test logs, serial terminal outputs, or photos demonstrating the change on physical hardware.
   - Update `docs/STATUS.md` and `docs/hardware-notes.md` accordingly.

---

## ⚖️ Licensing

All code written specifically for this BSP is licensed under **GPL-2.0-only** to remain 100% compatible with the upstream Linux kernel. Contributed code must not contain proprietary, NDA-encumbered, or leaked proprietary SDK source code.

# Bring-Up Status — GA36-MB V1.2 (Allwinner A33)

This is a clean-room downstream BSP for the **GA36-MB V1.2** handheld console (Allwinner A33 SoC, 4× Cortex-A7). The recovered fex (`output/sys_config.fex`) serves as the frozen hardware baseline.

### 🌟 Overall State: Autonomous Boot & Shell
The build is **100% autonomous and self-contained**:
- A single `./build.sh` produces `output/firmware/ga36-stockboot.img`.
- Flashing this image produces a fully working boot: the console powers on, initializes 512 MiB DDR3, executes Linux 6.12.41, lights up the JD9366 MIPI-DSI LCD with Tux & boot log on `fbcon`, mounts `/dev/mmcblk0p1`, and launches the interactive BusyBox shell on both the screen (`tty1`) and serial (`ttyS2`).

---

## 📊 Subsystem Status Matrix

| Subsystem | Status | Evidence / Verification State |
|-----------|--------|-------------------------------|
| **Autonomous Bootchain** | ✅ **CONFIRMED ON SILICON** | Stock boot0 @ LBA 16 + boot1 @ LBA 38192 with byte-exact DOS MBR @ LBA 0 |
| **Linux 6.12.41 Kernel** | ✅ **CONFIRMED ON SILICON** | Boots `zImage` + appended DTB from Android boot image @ LBA 172032 |
| **RAM Configuration** | ✅ **CONFIRMED ON SILICON** | Explicit `memory@40000000` (512 MiB) in DTS fixes boot1 ATAG_MEM failure |
| **LCD Display (JD9366)** | ✅ **CONFIRMED ON SILICON** | MIPI-DSI 2 lanes, 640×480 RGB888, DRM TCON/DSI driver, fbcon working |
| **PWM Backlight** | ✅ **CONFIRMED ON SILICON** | PWM0 @ PH00, 20 kHz, controllable via `/sys/class/backlight` |
| **AXP223 PMIC** | ✅ **CONFIRMED ON SILICON** | RSB bus communication, core power rails (DCDC1-5, ALDO2-3, DLDO3) |
| **Rootfs & Userland** | ✅ **CONFIRMED ON SILICON** | ext4 rootfs in MBR P1 (sector 3383336), interactive BusyBox shell on LCD & UART2 |
| **UART2 Debug Console** | ✅ **CONFIRMED ON SILICON** | PB00/PB01 @ 115200n8 (`ttyS2`) |
| **Gamepad Buttons (16+FN)** | 🟡 **CONFIGURED (UNTESTED)** | Fully mapped in DTS (`micro_gamepad` & `fn-key`). **Silicon testing pending.** |
| **Analog Joysticks** | 🟡 **IN PROGRESS** | MCU serial protocol decoded (`A7 10 00` frame @ 9600 baud on UART1); driver in development |
| **Audio (Codec + Amp)** | ✅ **CONFIGURED** | sun8i codec enabled, PA speaker amplifier enable on PH09 |
| **USB OTG** | ✅ **CONFIGURED** | OTG controller enabled, ID detect on PH08, AXP VBUS drive |
| **Secondary SD (SD2/MMC1)**| ❌ **UNASSIGNED** | Intentionally unassigned — pending physical hardware tracing |

---

## 🎮 Input Subsystem Detail (Configured vs Untested)

- **Source of Mapping**: Forensically recovered from the stock vendor kernel module `udt_joystick.ko`.
- **Implementation**: Defined in `dts/sun8i-a33-ga36-mb-v1.2.dts` using Linux `gpio-keys`:
  - `micro_gamepad`: 16 buttons (D-Pad, A/B/X/Y, L1/L2/R1/R2, L3/R3, Start/Select).
  - `fn-key`: Dedicated FN button on PE01.
- **Assumptions**: Buttons are assumed active-low (`GPIO_ACTIVE_LOW`) with internal pull-up bias (`bias-pull-up`) per R36S family conventions.
- **Testing Gate**:
  1. Boot console into BusyBox.
  2. Run `cat /proc/bus/input/devices` to verify registration.
  3. Run `evtest /dev/input/event0` and press buttons.
  4. Run `cat /proc/interrupts | grep pio` to verify interrupt triggering.
  5. *If buttons report inverted events, change `GPIO_ACTIVE_LOW` to `GPIO_ACTIVE_HIGH` in the DTS.*

---

## 🛠️ Build Pipeline Summary

1. `bootstrap.sh --install-deps`: Downloads Bootlin toolchain, Linux 6.12.41 source, BusyBox 1.36.1 source.
2. `build.sh`:
   - `scripts/fw/build-linux.sh`: Compiles kernel, installs JD9366 DRM driver, builds DTS, creates Android `boot.img`.
   - `scripts/fw/build-initramfs.sh`: Builds/stages static BusyBox rootfs.
   - `scripts/fw/package-stock.sh`: Assembles `ga36-stockboot.img` with self-verifying assertion checks.
3. Flash: `sudo dd if=output/firmware/ga36-stockboot.img of=/dev/sdX bs=4M conv=fsync status=progress`.

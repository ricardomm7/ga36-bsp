# Conclusões forenses — clone R36S (GA36-MB V1.2)

Formato: **FACTO** / **HIPÓTESE** / **PROVA** / **GRAU DE CONFIANÇA** / **PRÓXIMO PASSO**

## 1. O SoC é Allwinner A33 (sun8iw5) — as marcações "RK3326" são falsas

- **FACTO**: todo o firmware (boot0, U-Boot, kernel, ramdisk, SYSTEM) é 100% sunxi; o runtime do aparelho reporta GPU Mali-400 MP.
- **PROVA**:
  - `eGON.BT0` no setor 16 (magia exclusiva do boot0 Allwinner) + strings `HELLO! BOOT0`, `card boot number`.
  - Boot1 = U-Boot com head `"uboot"` (magia do SDK Allwinner, NÃO `eGON.BT1`) no setor 38192 (0x12A6000), checksum STAMP validado.
  - U-Boot 2017.09 com `sunxi_flash`/`boota`/`setargs_mmc`, board `a23-c1`, driver `[ND]A33 nand2.0`, SDK `/home/lxl/work/a23/A23/lichee/linux-3.4/...`.
  - Kernel `Linux version 3.4.39 (lxl@lxl)` com drivers `sunxi_hcd`, `sunxi-arisc`, `sunxikbd`, `CONFIG_USB_SUNXI_USB0_OTG`, `[ARISC] rsb` (RSB é barramento sunxi), zero marcas Rockchip.
  - SquashFS `SYSTEM`: os-release `EmuELEC 4.7-Nexus_devel_20260528115038 (OdroidGoAdvance.aarch64)`, `LIBREELEC_PROJECT="Allwinner"`, `COREELEC_DEVICE="A33"`, `/ee_arch` = `A33`.
  - **Log de jogo real em `p8/.config/emuelec/logs/emuelec.log`**: `[GL] Vendor: ARM, Renderer: Mali-400 MP` (A33 usa Mali-400; RK3326 real usa Mali-G31). Caminho de build do vendor: `.../emuelec/build.EmuELEC-A33.arm-4/build/...`.
  - Corroboração externa: `phaseloop/R36S-console-clone---GA36-MB-V1.0-20250730` — mesmas marcações `RK3326 NACLH04028` falsas, die real A33.
- **GRAU**: ~98% (facto). Falta apenas prova física (UART e/ou descapecar o die) para fechar os últimos 2%. Nenhum `D00DFEED`/`RKNS`/idbloader Rockchip encontrado — consistente.
- **PRÓXIMO PASSO**: capturar UART a 1 500 000 baud (baud do A33) para confirmar banner do U-Boot e CPU.

## 2. PMIC é AXP22x (AXP223), não RK817

- **FACTO**: o kernel só fala com a família AXP22 via RSB; o U-Boot do cartão espera explicitamente um AXP22x.
- **PROVA**: strings do U-Boot `axp22_probe_this_poweron_cause`, `probe axp22x failed`, `axp22_dldo1..4`, `axp22_dc1sw`, `axp22_ldoio0`, `axp22_dcdc1`; no kernel, strings `AXP22_DCDC1..5`, `AXP22_LDO1..12`, `axp_pinctrl_probe`, drivers `rsb read/write`; zero strings `rk817`/`rk808`. `es_log.txt` regista `battery47` (leitura do PMIC AXP).
- **HIPÓTESE**: o componente marcado `RK817-1` na motherboard é ou marcação falsa/outro CI, ou o equipamento usa AXP223 (padrão do A33).
- **GRAU**: 95% para AXP223 (strings de PMIC presentes no próprio U-Boot do cartão).
- **PRÓXIMO PASSO**: inspeção física + fio de comunicação (RSB) sob o chip; conferir datasheet AXP223 vs RK817 no layout.

## 3. Layout do cartão (proven, do dump)

| Partição | Range (setores) | Tipo | Conteúdo |
|---|---|---|---|
| p1 | 3 383 336 – 30 349 310 | FAT32 (12.9G) | ROMs / UDISK |
| p2 | 73 728 – 139 263 | FAT16 (32M, bootable) | bootlogo.bmp, bat/*.bmp, font32.sft, font24.sft, magic.bin |
| p5 | 139 264 – 172 031 | Linux (16M) | env U-Boot (bootcmd, setargs, partitions) |
| p6 | 172 032 – 237 567 | Linux (32M) | Android `boot.img` (kernel + initrd) |
| p7 | 237 568 – 1 286 143 | FAT16 (512M) label `ARKOS` | `SYSTEM` (SquashFS 402M) + low_pwr.bmp |
| p8 | 1 286 144 – 3 383 335 | ext4 (1G) | `/storage` EmuELEC (roms, .config, cores, ...) |

- **CORREÇÃO de assunções antigas do projeto**: p2 NÃO contém SquashFS (contém logos/boot); o SYSTEM SquashFS está em **p7/SYSTEM**; `root=/dev/mmcblk0p7` do cmdline corresponde ao FAT16 com o ficheiro SYSTEM.
- Setor 0 (MBR): sem código de boot. Setor 64 (posição idbloader Rockchip): `0xFF` apagado.

## 4. boot0 eGON — checksum VALIDADO (algoritmo STAMP resolvido)

- **FACTO**: `eGON.BT0` no setor 16 (0x2000), branch `0xea0000bc`, `length=0x8000`; campo checksum `0x235fce10`.
- **PROVA (resolvido)**: o algoritmo oficial (mksunxichecksum do sunxi-tools) é: preencher o campo checksum (`+0x0c`) com a STAMP `0x5F0A6C39` e somar todas as words LE de 32 bits sobre os 0x8000 bytes. Aplicado ao dump: soma = `0x235fce10` = valor gravado (**MATCH=True**) → boot0 autêntico e íntegro.
- Head público: `pub_head_s=0x30`, `pub_ver "1100"`, `egon_ver "1100"`, `platform "3.1.0"`. Head privado (0x2030): `prvt_head_size=0x2c8`, `vsn "1230"`, `boot0sd=0x228 (552)`, `boot1sd=3`, campos `card_no`/`speed`/`line`/`cnt`. **Nota**: `boot1sd=3` não corresponde ao setor real do boot1 (o boot0 usa o literal hard-coded `movw r0,#0x9530` = 38192).
- **GRAU**: facto.

## 5. Cadeia de boot completa (resolvida)

- **FACTO**:
  1. BROM lê o setor 16 (0x2000) → boot0 `eGON.BT0` (32 KB, 0x2000–0xA000); checksum STAMP validado.
  2. boot0 (linked para SRAM 0x0, entry file 0x22F8 / runtime 0x2F8) inicializa DRAM e SD/MMC ("HELLO! BOOT0 is starting!").
  3. boot0 lê o head do boot1 (2 setores) do setor **38192 (0x12A6000)** para `0x4A000000`, verifica magic `"uboot"` (o boot1 deste SDK NÃO usa `eGON.BT1`; zero ocorrências desse magic em toda a imagem), valida checksum, lê `size` em `[boot1+0x14]` = **0xCC000 (816 KB)**, lê o resto por setores e salta para `0x4A000000` ("Jump to secend Boot").
  4. U-Boot **2017.09-g05bceb2-dirty #lxl (Jul 14 2025)** — build Allwinner A23/A33: PMIC **AXP223**, board `a23-c1`, driver `[ND]A33 nand2.0`, subsistemas `sunxi_flash`/`sunxi sprite`/`sunxi fastboot`/`SUNXI_EFEX_*`/`sunxi_rsb_*` (RSB), `console=ttyS0,115200`, `bootcmd=run sunxi_sprite_test`, `boot_normal=sunxi_flash read 40007800 boot;boota 40007800`.
  5. U-Boot lê a partição `boot` (p6 @ setor 172032) via `sunxi_flash read 40007800 boot;boota 40007800` e executa o kernel 3.4.39 sunxi → rootfs p7.
- **p6 = boot head sunxi (não Android standard)**: magic `"ANDROID!"` + cmdline em `+0x40` + kernel + ramdisk. Cmdline efetivo (dump): `console=ttyS2,115200 root=/dev/mmcblk0p7 init=/init disk=/dev/mmcblk0p8 ion_cma_512m=8m ion_cma_1g=176m ion_carveout_512m=0m ion_carveout_1g=150m coherent_pool=4m loglevel=4 partitions=bootloader@mmcblk0p2:env@mmcblk0p5:boot@mmcblk0p6:rootfs@mmcblk0p7:storage@mmcblk0p8:UDISK@mmcblk0p1 boot_type=1 config_size=0`. Nota: UART de debug do A33 = ttyS2 neste build.
- **env U-Boot**: p5 está toda a zeros (env não gravado no cartão) — os defaults compilados no boot1 são `bootcmd=run setargs_mmc boot_normal`, `mmc_root=/dev/mmcblk0p7`, `console=ttyS0,115200` (o ttyS2 final vem do head da p6).
- **Boot1 head @0x12A6000**: `3e 01 00 ea` + `"uboot"` + checksum `0x3b00982b` (**validado**: soma STAMP sobre 0xCC000 bytes = MATCH) + `0x4000` + size `0xCC000` + `0xC0000` + versão `1.1.0`.
- Extent boot1: **0x12A6000–0x1372000** (contém o banner U-Boot em 0x13204B4; o `.fex`/`ANDROID!` na zona 0x132xxxx são strings/rodata do próprio U-Boot, não dados embebidos). O carve antigo `fs/uboot/uboot-raw.bin` (0x12F0000–0x1330000) estava deslocado.
- Zona 0x12A0000–0x12A5FFF (48 setores antes do boot1): dados de alta entropia sem strings — resíduo não identificado; boot1 é plain (não cifrado). Sem evidência de AES no boot0 (sem S-box, sem refs a 0x1c15000, sem strings crypto).
- **GRAU**: facto (checksums validados; offsets confirmados por desassemblagem do boot0, entrada 0x22F8, literal `movw r0,#0x9530`).
- **PRÓXIMO PASSO**: UART a 1 500 000 baud para ver o banner real; extrair o env U-Boot da p5 para confirmar `partitions=`/`setargs_mmc` efetivos.

## 6. Kernel 3.4.39 vendor — sem DTB, config via script.bin/sys_config

- **FACTO**: zImage descomprimido (vmlinux direto, strings visíveis), zero magias FDT em todo o boot.img e na zona reservada; referências a `sys_config.fex`/`script.bin` no kernel e U-Boot; cmdline `config_size=0`.
- **HIPÓTESE**: o fabricante compilou a configuração da placa (painel, GPIOs, touch `ctp_*`, backlight, bateria AXP) dentro do kernel — valores por omissão do sys_config — já que não há script.bin no cartão nem DTB.
- **GRAU**: facto (sem DTB/script.bin); hipótese forte para defaults compilados.
- **PRÓXIMO PASSO**: para extrair o mapa de pins real: UART + análise do driver `sunxi-pinctrl`/`sys_config` do kernel 3.4 e do log de boot; ou medir na bancada (ver `docs/REVERSE_ENGINEERING.md`).

## 7. Painel / Áudio / Touch

- **PROVA (runtime)**: log real `emuelec.log` → `Detecting screen resolution: 640x480`, `Using resolution 640x480` (LCD 640x480 3.5"); ALSA via codec interno `SUNXI-CODEC` + `SUNXI-I2S0`, controlo `PA_Enable_and_HP_Control`; touch capacitivo configurável via `ctp_*` (twi).
- `dimensions.conf` e `ee_videomode=1080p60hz` (escala do framebuffer; painel físico 640x480).
- **PRÓXIMO PASSO**: identificar controlador do touch e pinos do PA/backlight por medição.

## 8. Configuração de fábrica do utilizador (p8)

- `system.version=GA36C-UDT-ARKOS-TF-R-20260528`, `boardType=g80`, hostname `UDT`, idioma `pt_PT`, `brightness.level=10` (perfil OdroidGoAdvance do EmuELEC), RetroArch 1.17.0 (build 2026-04-17).

## Decisão estrutural para o BSP

> **IMPORTANTE**: ver `docs/hardware-vs-firmware.md` — a contradição hardware (RK3326+RK817 fotografados)
> vs firmware (A33+AXP223) **não está encerrada**. O cartão não arranca em RK3326 (sem idbloader Rockchip),
> e o runtime do cartão é A33 (Mali-400). Existem revisões GA36 distintas (V1.0 = A33 com marcações falsas;
> V1.1 = RK3326 real). A V1.2 do utilizador não está documentada. **Não pivotar até teste decisivo
> (RetroArch CPU/Mali, boot sem SD, UART).**

O alvo correto é **Allwinner A33 / sun8i**, não RK3326:
- Manter o **bootloader stock** (boot0/boot1 + Android boot img) intacto e substituir apenas o kernel — ver `docs/spl-vs-boot0-audit.md`. O port mainline (SPL+U-Boot) foi abandonado.
- Linux mainline `sun8i-a33` (kernel 6.12) com DTS próprio — a config legacy script.bin é substituída por DTS.
- Remover `RKBIN_COMMIT` de `configs/sources.env`; substituir `dts/rk3326-ga36-mb-v1.2.dts`.
- O fluxo de boot atual (boot.img Android + initrd EmuELEC + kernel 3.4) é preservado: só o kernel dentro da partição "boot" stock é substituído pelo nosso (LBA 172032).

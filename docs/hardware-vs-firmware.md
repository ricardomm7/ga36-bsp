# Contradição hardware vs firmware — prova forense (GA36-MB)

**Pergunta em aberto**: o firmware do cartão é 100% Allwinner A33, mas a motherboard fotografada
declara RK3326 + RK817. Este documento prova cada identificação com offsets, mostra a evidência
runtime, documenta as revisões GA36 conhecidas e define o teste que resolve a contradição.

> **RESOLVIDO (2026, prova de hardware via FEL):** o SoC desta unidade (GA36-MB V1.2)
> foi identificado diretamente no BROM com `sunxi-fel`: chip-id **`0x1650` = Allwinner A23**
> (família sun8i A23/A33). Não é RK3326. A identificação via FEL é leitura do silício,
> não documentação — a hipótese RK3326 está fechada para esta placa, e a pinagem
> PB00/PB01 = UART2 é válida para testar em hardware. O BSP atual (`MACH_SUN8I_A33`)
> aplica-se ao A23/A33 sem alterações.

## 1. Identificação de AXP223 — BOOT1 (U-Boot), offsets no ficheiro bruto

| Offset absoluto | Evidência |
|---|---|
| `0x1329345` | `axp22_probe_this_poweron_cause` (driver PMIC AXP22x no U-Boot) |
| `0x132936A` | `probe axp22x failed` |
| `0x13296E3` | `axp22` (nome do driver) |
| `0x136D8E4` | `axp22_dldo4` (tabela de reguladores, defaults de tensão) |
| `0x136DC44` | `axp22_dc1sw` |
| `0x136DDF4`/`0x136DE18` | `axp22_dldo3`, `axp22_ldoio0`, `axp22_eldo2` |
| `0x136DFCC`/`0x136E234`/`0x136E338` | `axp22_dcdc1`, `axp22_dldo1` |
| — | **Zero** ocorrências de `axp221`, `axp223`, `axp20`, `rk817`, `rk808` no boot1 |

- AXP22x = família PMIC do A33/A23 (RSB). RK817 (Rockchip) teria strings `rk817_*` e barramento I2C.
- **FACTO**: o U-Boot do cartão espera ligar a um AXP22x via RSB (`sunxi_rsb_read/write err` @ `0x1329DF2`/`0x1329E62`; config `s_rsb_used/sck/sda` @ `0x136CFF2`). Não contém código para RK817.

## 2. Identificação A23/A33 — BOOT1 (U-Boot), offsets

| Offset absoluto | Evidência |
|---|---|
| `0x136D224` | `a23-c1` (nome de board do SDK Allwinner A23/A33, tabela de defaults) |
| `0x133B505` | `[ND]A33 nand2.0 version:0008 date:... Jun 16 2014` (driver NAND A33) |
| `0x132A81C` | `LCD_panel_init` (subsistema display sunxi) |
| `0x13300x..` | `AWUSBFEX`, `FEX_CMD_fes_*` (protocolo FES do Allwinner, único do vendor) |

## 3. Identificação A23/A33 — Kernel 3.4.39 (vmlinux na p6), offsets

| Offset absoluto | Evidência |
|---|---|
| `0x058E0899` | `Linux version 3.4.39 (lxl@lxl) (gcc 4.6.3 Linaro ... crosstool-NG)` |
| `0x05A62074` | `/home/lxl/work/a23/A23/lichee/linux-3.4/arch/arm/include/asm/dma-mapping.h` (path do SDK Allwinner A23 "lichee") |
| `0x05A54846` | `AXP22_DCDC1..5`, `AXP22_LDO10/11/12`, `AXP22_LDOIO0/1` (driver regulator do kernel) |
| `0x058E0E38` | `sun8i_fixup`, `aw_pm_init`, `aw_super_standby` (máquina sun8i + PM Allwinner) |
| — | `sunxi` 456 hits; `sun6i` 75; `a23` 46; **zero** hits `rk3326`, `rk817`, `rk808`, `rockchip`, `Mali-G31`, `rockchip` DTB |

## 4. Prova de que o runtime NÃO é RK3326 — logs reais da p8 deste cartão

`storage/.config/emuelec/logs/emuelec.log` (log de sessão de jogo gravado pelo aparelho):
- Linha 71: `[GL]: Vendor: ARM, Renderer: Mali-400 MP` — Mali-400 é GPU do A33;
  RK3326 usa **Mali-G31 MP2** (reportaria `Mali-G31`).
- Linha 70: `Detecting screen resolution: 640x480` — LCD 3.5" 640x480.
- Linha 135: `ALSA lib /home/lxl/work/rk312x_ee/emuelec/build.EmuELEC-A33.arm-4/build/alsa-lib-1.2.8/...`
  (path de build compilado no binário) — o runtime foi construído como **EmuELEC-A33.arm-4**.

`storage/.config/emuelec/logs/es_log.txt`:
- `2025-05-13 04:34:27 ERROR battery47` — erro de leitura do canal de bateria do PMIC **AXP**
  (o kernel sunxi-A33 reporta `battery47`; não existe equivalente em kernel Rockchip).
- Primeira atividade `2025-01-17 03:28:37` — cartão em uso real desde Jan/2025.

## 5. Prova de que o SYSTEM é um build A33 (não há sistema Rockchip no cartão)

`p7/SYSTEM` (SquashFS 421 MB), `etc/os-release`:
- `LIBREELEC_PROJECT="Allwinner"`, `COREELEC_PROJECT="Allwinner"`, `COREELEC_DEVICE="A33"`,
  `LIBREELEC_ARCH="OdroidGoAdvance.aarch64"`, `BUG_REPORT_URL="git@192.168.0.55:emuelec/emuelec"`.
- `EmuELEC-A33` → 1101 ocorrências no SYSTEM; `rk312x_ee` → 1143 (path de build embebido em binários).
- `system.version=GA36C-UDT-ARKOS-TF-R-20260528` e `boardType=g80` (p8 `es_settings.cfg`);
  a string `GA36C-UDT-ARKOS-TF-R-20260528` está inclusive embebida numa fonte TTF do SYSTEM
  (build customizado para esta placa "GA36C").

## 6. Cadeia de boot (resumida, validada por checksum)

`eGON.BT0` (setor 16, checksum STAMP `0x235fce10` MATCH) → boot1 `"uboot"` (setor 38192,
checksum STAMP `0x3b00982b` MATCH, salto para `0x4A000000`) → U-Boot 2017.09 (Allwinner A23/A33,
AXP223) → boot.img sunxi (p6, magic `ANDROID!` + cmdline) → kernel 3.4.39 sunxi → rootfs p7.

## 7. Revisões GA36 conhecidas (pesquisa web, jul/2026)

| Revisão | Data | SoC real | Evidência |
|---|---|---|---|
| GA36-MB V1.0 | 2025-07-30 | **Allwinner A33** (marcações `RK3326 NACLH04028` FALSAS) | phaseloop/R36S-console-clone---GA36-MB-V1.0-20250730 |
| GA36-MB V1.1 | 2025-10-25 | **RK3326 real** (2× Samsung K4B4G1646E, 1 GB) | AeolusUX/ArkOS-R3XS #285; TheAlexClavijo backup |
| GA36-MB V1.2 (esta unidade) | ? | **Allwinner A23** — chip-id `0x1650` via `sunxi-fel` (BROM) | sessão FEL deste projeto |
| G80 (boardType) | ? | família de clones G80 (algumas RK3326) | handhelds.miraheze.org/wiki/R36S_Clones |

### 7.1 Esta unidade (GA36-MB V1.2) — identificação via FEL

Prova de hardware, não documentação: `sunxi-fel` lê o chip-id diretamente do BROM do
SoC com a placa em modo FEL, antes de qualquer firmware do cartão. Leitura:
`chip-id = 0x1650` → **Allwinner A23** (sun8i). A distinção V1.0/V1.1/RK3326 abaixo
aplica-se a OUTRAS unidades documentadas na web; para esta unidade o SoC está
confirmado e a pinagem PB00/PB01 = UART2 é a config de fábrica (`sys_config.fex`).

Ferramenta independente `AIntelligentTech/retro-handheld-verify` confirma o mesmo método:
GA36 clone → eGON @ setor 16 + `[ND]A33` nas strings → **veredicto GA36_CLONE/Allwinner A33**.

## 8. Conclusão e teste decisivo

- **FACTO (firmware)**: boot0+boot1+U-Boot+kernel+SYSTEM+runtime = Allwinner A33 + AXP223.
- **FACTO (runtime)**: a consola que usou este cartão reportou Mali-400 MP @ 640x480 e build
  EmuELEC-A33 — não é RK3326 (Mali-G31).
- **FACTO (silício)**: esta unidade (V1.2) tem chip-id **`0x1650` = A23** lido no BROM via
  `sunxi-fel` — A23 e A33 partilham a mesma família sun8i, coerente com todo o firmware.
- **Dedução**: um RK3326 real não tem idbloader Rockchip neste cartão (setor 64 = `0xFF`,
  zero `D00DFEED`/`RKNS` em 15.6 GB) → **este cartão não arranca numa consola RK3326**.

Das duas hipóteses anteriores, a que sobreviveu é a nº 1 (marcações RK3326 falsas,
SoC A23/A33) — confirmada pela leitura FEL na própria placa. A hipótese nº 2
(RK3326 real) está descartada para esta unidade.

**Testes que resolvem (históricos; o decisivo já foi executado nesta unidade):**
1. ~~Identificação via FEL~~ — **EXECUTADO: chip-id `0x1650` = A23.**
2. **RetroArch → Information → System**: `CPU: ARMv7` + `Mali-400` = A33; `CPU: ARMv8 (64bit)` + `Mali-G31` = RK3326.
3. **Arrancar SEM cartão SD**: clone A33 mostra menu/bootlogo; RK3326 original não arranca.
4. **UART a 1 500 000 baud**: banner `U-Boot ... (sunxi)`/`CPU: Allwinner A33` vs `Rockchip RK3326`.
5. **Foto do die vs phaseloop V1.0**: as marcações `RK3326 NACLH04028 ...` da V1.0 são falsas por cima do die A33.
6. **RAM**: 497 MB reportado = clone; 977 MB = RK3326 (V1.1/V1.2 dual-chip).

O BSP A33 (SPL + U-Boot + Linux sun8i) está alinhado com o silício confirmado — sem
pivot necessário.

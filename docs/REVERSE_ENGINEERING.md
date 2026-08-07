# Hardware validation required for a safe GA36 port

`test.img` can reveal software descriptions, but cannot prove physical pin wiring.

1. Capture complete boot UART at 1,500,000 baud in `logs/uart/`.
2. Decompile recovered DTBs and compare regulators, aliases, MMC and USB nodes.
3. Identify FN with `gpioinfo`/`gpiomon` on vendor Linux, including active level.
4. Validate SD2 card-detect, CMD and CLK with a logic analyser.
5. Validate OTG VBUS and ID/CC role detection with a USB analyser.
6. Identify LCD panel, backlight enable/PWM and audio codec from board inspection.

Record bench-proven facts in `docs/hardware-notes.md`, then replace the marked DTS placeholders.

// SPDX-License-Identifier: GPL-2.0
/*
 * DRM panel driver for the JD9366 640x480 MIPI-DSI panel on the
 * GA36-MB V1.2 (R36S) handheld.
 *
 * Driver plumbing is derived from the community driver by Jeremy Clark
 * (CodeZombie) for this exact board (docs/GA36-MB-Linux), which was proven
 * to light the panel on silicon. The command/init DCS, however, is NOT
 * hardcoded here: it is sourced from board/ga36-mb-v1.2/jd9366_init.h, which
 * is extracted from the vendor lcd.ko and hash-pinned (see REPRODUCIBILITY.md,
 * "Vendor LCD driver recovery"). Any change to the init sequence therefore
 * hashes to a different file and fails the pin check instead of silently
 * diverging from the panel's real init.
 */

#include <linux/backlight.h>
#include <linux/delay.h>
#include <linux/gpio/consumer.h>
#include <linux/regulator/consumer.h>
#include <linux/module.h>

#include <drm/drm_crtc.h>
#include <drm/drm_device.h>
#include <drm/drm_mipi_dsi.h>
#include <drm/drm_panel.h>

#include <video/mipi_display.h>

#include "jd9366_init.h"

struct jd9366 {
	struct device *dev;
	struct drm_panel panel;
	struct gpio_desc *reset_gpio;
	struct regulator *supply;
	struct backlight_device *backlight;
	bool prepared;
	bool enabled;
};

static const struct drm_display_mode default_mode = {
	.clock = 30000,			/* fex lcd_dclk_freq = 30 MHz */

	.hdisplay = 640,		/* fex lcd_x */
	.hsync_start = 640 + 280,	/* hdisplay + back porch */
	.hsync_end = 640 + 280 + 40,	/* + lcd_hspw */
	.htotal = 1040,			/* fex lcd_ht */

	.vdisplay = 480,		/* fex lcd_y */
	.vsync_start = 480 + 26,	/* vdisplay + back porch */
	.vsync_end = 480 + 26 + 6,	/* + lcd_vspw */
	.vtotal = 518,			/* fex lcd_vt */

	.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,

	/* 3.5" 4:3 panel */
	.width_mm = 71,
	.height_mm = 53,
};

static inline struct jd9366 *panel_to_jd9366(struct drm_panel *panel)
{
	return container_of(panel, struct jd9366, panel);
}

/*
 * Play the vendor DCS stream extracted from lcd.ko. Entries with
 * count == JD9366_DCS_DELAY are delays (ms); everything else is a raw
 * command + payload sent in one DCS write.
 */
static int jd9366_init_sequence(struct jd9366 *ctx)
{
	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
	u8 buf[1 + ARRAY_SIZE(jd9366_init[0].para)];
	unsigned int i;
	int err;

	for (i = 0; i < ARRAY_SIZE(jd9366_init); i++) {
		const struct jd9366_dcs_entry *e = &jd9366_init[i];

		if (e->count == JD9366_DCS_DELAY) {
			msleep(e->para[0]);
			continue;
		}

		buf[0] = e->cmd;
		if (e->count)
			memcpy(buf + 1, e->para, e->count);

		err = mipi_dsi_dcs_write_buffer(dsi, buf, 1 + e->count);
		if (err < 0)
			return err;
	}

	return 0;
}

static int jd9366_disable(struct drm_panel *panel)
{
	struct jd9366 *ctx = panel_to_jd9366(panel);

	if (!ctx->enabled)
		return 0;

	backlight_disable(ctx->backlight);

	ctx->enabled = false;

	return 0;
}

static int jd9366_unprepare(struct drm_panel *panel)
{
	struct jd9366 *ctx = panel_to_jd9366(panel);
	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
	int ret;

	if (!ctx->prepared)
		return 0;

	ret = mipi_dsi_dcs_set_display_off(dsi);
	if (ret)
		return ret;

	ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
	if (ret)
		return ret;

	msleep(120);

	if (ctx->reset_gpio) {
		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
		msleep(20);
	}

	regulator_disable(ctx->supply);

	ctx->prepared = false;

	return 0;
}

static int jd9366_prepare(struct drm_panel *panel)
{
	struct jd9366 *ctx = panel_to_jd9366(panel);
	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
	int ret;

	if (ctx->prepared)
		return 0;

	ret = regulator_enable(ctx->supply);
	if (ret < 0)
		return ret;

	if (ctx->reset_gpio) {
		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
		msleep(20);
		gpiod_set_value_cansleep(ctx->reset_gpio, 0);
		msleep(100);
	}

	ret = jd9366_init_sequence(ctx);
	if (ret)
		return ret;

	/* The vendor stream already ends in SLPOUT + DISPON; these are
	 * harmless re-sends matching the proven community flow. */
	ret = mipi_dsi_dcs_exit_sleep_mode(dsi);
	if (ret)
		return ret;

	msleep(125);

	ret = mipi_dsi_dcs_set_display_on(dsi);
	if (ret)
		return ret;

	msleep(20);

	ctx->prepared = true;

	return 0;
}

static int jd9366_enable(struct drm_panel *panel)
{
	struct jd9366 *ctx = panel_to_jd9366(panel);

	if (ctx->enabled)
		return 0;

	backlight_enable(ctx->backlight);

	ctx->enabled = true;

	return 0;
}

static int jd9366_get_modes(struct drm_panel *panel,
			    struct drm_connector *connector)
{
	struct drm_display_mode *mode;

	mode = drm_mode_duplicate(connector->dev, &default_mode);
	if (!mode) {
		dev_err(panel->dev, "failed to add mode %ux%ux@%u\n",
			default_mode.hdisplay, default_mode.vdisplay,
			drm_mode_vrefresh(&default_mode));
		return -ENOMEM;
	}

	drm_mode_set_name(mode);

	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
	drm_mode_probed_add(connector, mode);

	connector->display_info.width_mm = mode->width_mm;
	connector->display_info.height_mm = mode->height_mm;

	return 1;
}

static const struct drm_panel_funcs jd9366_drm_funcs = {
	.disable = jd9366_disable,
	.unprepare = jd9366_unprepare,
	.prepare = jd9366_prepare,
	.enable = jd9366_enable,
	.get_modes = jd9366_get_modes,
};

static int jd9366_probe(struct mipi_dsi_device *dsi)
{
	struct device *dev = &dsi->dev;
	struct jd9366 *ctx;
	int ret;

	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
	if (IS_ERR(ctx->reset_gpio)) {
		ret = PTR_ERR(ctx->reset_gpio);
		dev_err(dev, "cannot get reset GPIO: %d\n", ret);
		return ret;
	}

	ctx->supply = devm_regulator_get(dev, "power");
	if (IS_ERR(ctx->supply)) {
		ret = PTR_ERR(ctx->supply);
		dev_err(dev, "cannot get regulator: %d\n", ret);
		return ret;
	}

	ctx->backlight = devm_of_find_backlight(dev);
	if (IS_ERR(ctx->backlight))
		return PTR_ERR(ctx->backlight);

	mipi_dsi_set_drvdata(dsi, ctx);

	ctx->dev = dev;

	dsi->lanes = 2;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
			  MIPI_DSI_MODE_LPM;

	drm_panel_init(&ctx->panel, &dsi->dev, &jd9366_drm_funcs,
		       DRM_MODE_CONNECTOR_DPI);
	ctx->panel.dev = dev;
	ctx->panel.funcs = &jd9366_drm_funcs;

	ctx->panel.prepare_prev_first = true;
	drm_panel_add(&ctx->panel);

	ret = mipi_dsi_attach(dsi);
	if (ret < 0) {
		dev_err(dev, "mipi_dsi_attach() failed: %d\n", ret);
		drm_panel_remove(&ctx->panel);
		return ret;
	}

	return 0;
}

static void jd9366_remove(struct mipi_dsi_device *dsi)
{
	struct jd9366 *ctx = mipi_dsi_get_drvdata(dsi);

	mipi_dsi_detach(dsi);
	drm_panel_remove(&ctx->panel);
}

static const struct of_device_id boe_jd9366_of_match[] = {
	{ .compatible = "boe,jd9366" },
	{ }
};
MODULE_DEVICE_TABLE(of, boe_jd9366_of_match);

static struct mipi_dsi_driver boe_jd9366_driver = {
	.probe = jd9366_probe,
	.remove = jd9366_remove,
	.driver = {
		.name = "panel-boe-jd9366",
		.of_match_table = boe_jd9366_of_match,
	},
};
module_mipi_dsi_driver(boe_jd9366_driver);

MODULE_AUTHOR("CodeZombie <https://github.com/CodeZombie>");
MODULE_DESCRIPTION("DRM Driver for BOE JD9366 MIPI DSI panel (GA36-MB v1.2)");
MODULE_LICENSE("GPL v2");

-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

--- THEMES
-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Macchiato"
config.font = wezterm.font_with_fallback({
	-- "Inter",
	"JetBrains Mono",
	"Fira Code",
	"fangsong",
	"source-han-sans",
})
config.window_frame = {
	-- The font used in the tab bar.
	-- Roboto Bold is the default; this font is bundled
	-- with wezterm.
	-- Whatever font is selected here, it will have the
	-- main font setting appended to it to pick up any
	-- fallback fonts you may have used there.
	font = wezterm.font({ family = "Roboto", weight = "Bold" }),

	-- The size of the font in the tab bar.
	-- Default to 10.0 on Windows but 12.0 on other systems
	font_size = 12.0,

	-- The overall background color of the tab bar when
	-- the window is focused
	active_titlebar_bg = "#333333",

	-- The overall background color of the tab bar when
	-- the window is not focused
	inactive_titlebar_bg = "#333333",
}

config.colors = {
	tab_bar = {
		-- The color of the inactive tab bar edge/divider
		inactive_tab_edge = "#575757",
	},
}

config.window_background_image = "C:/Documents and Settings/pv/Pictures/terminal-wallpaper.png"
config.window_background_opacity = 1.0
config.text_background_opacity = 1.0

--- Spawn a fish shell in login mode
config.default_prog = { "pwsh", "-l" }

-- Update Plugins
-- wezterm.plugin.update_all()

-- PLUGINS

wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm").apply_to_config(config)
wezterm.plugin.require("https://github.com/yriveiro/wezterm-status").apply_to_config(config)

-- and finally, return the configuration to wezterm
return config

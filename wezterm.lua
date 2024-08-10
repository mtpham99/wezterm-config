local wezterm = require("wezterm")
local utils = require("utils")

-- general config
local config = {
	-- font
	font = wezterm.font("Iosevka NFM SemiBold"),
	font_size = 14,

	-- cursor
	animation_fps = 1,
	default_cursor_style = "BlinkingBar",
	cursor_blink_ease_in = "Constant",
	cursor_blink_ease_out = "Constant",

	-- window
	adjust_window_size_when_changing_font_size = false,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	window_background_opacity = 0.60,

	-- tabs
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = false,
	tab_bar_at_bottom = false,

	-- colors
	color_scheme = "iTerm2 Default",
	-- colors = {
	--   tab_bar = {
	--     -- background = ,
	--     -- new_tab = { bg_color = , fg_color = , intensity = 'Bold', },
	--     -- new_tab_hover = { bg_color = , fg_color = , intensity = 'Bold', },
	--     -- format-tab-title = ,
	--     -- active_tab = ,
	--     -- inactive_tab = ,
	--     -- inactive_tab_hover = ,
	--   },
	-- },

	-- icons
	detect_password_input = false,

	-- behaviors
	selection_word_boundary = " \t\n{}[]()\"`',;:|=&!%",
	exit_behavior = "CloseOnCleanExit",
	window_close_confirmation = "AlwaysPrompt",
	scrollback_lines = 999999,

	-- system
	check_for_updates = false,
	enable_wayland = true, -- prefer wayland
	front_end = "OpenGL",
	webgpu_power_preference = "LowPower",
}

-- multiplexer config
config = utils.merge_tables(config, require("multiplex"))

-- return config
return config

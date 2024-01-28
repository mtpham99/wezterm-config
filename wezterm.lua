-- Wezterm API
local wezterm = require('wezterm')

-- Config Table
local config = {}

-- Config Builder for Clear Error Messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- GPU
-- local gpus = wezterm.gui.enumerate_gpus()
-- config.webgpu_preferred_adapter = gpus[0]
-- config.front_end = 'OpenGL'

-- Cursor
config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
config.animation_fps = 1

-- Font
config.font = wezterm.font('JetBrains Mono', { weight = 'Medium', italic = false })
config.font_size = 13

-- Colorscheme
config.color_scheme = 'Breeze (Gogh)'
config.colors = {
	background = 'black',
}

-- Transparent Background
config.window_background_opacity = 0.55

-- Padding
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- Tabs Bar
config.use_fancy_tab_bar = false

-- Password Input
config.detect_password_input = false

-- Scrollback
config.scrollback_lines = 1000000

-- Finish
return config

-- Multiplexing Config
local wezterm = require('wezterm')
local multiplex = {}

multiplex.leader = { key = 'b', mods = 'CTRL' }
multiplex.keys = {
	-- Split Panes
	{
		key = '%',
		mods = 'LEADER|SHIFT',
		action = wezterm.action.SplitHorizontal({ domain = 'CurrentPaneDomain' })
	},
	{
		key = '"',
		mods = 'LEADER|SHIFT',
		action = wezterm.action.SplitVertical({ domain = 'CurrentPaneDomain' })
	},
	-- Select Panes
	{
		key = 'h',
		mods = 'LEADER',
		action = wezterm.action.ActivatePaneDirection('Left')
	},
	{
		key = 'j',
		mods = 'LEADER',
		action = wezterm.action.ActivatePaneDirection('Down')
	},
	{
		key = 'k',
		mods = 'LEADER',
		action = wezterm.action.ActivatePaneDirection('Up')
	},
	{
		key = 'l',
		mods = 'LEADER',
		action = wezterm.action.ActivatePaneDirection('Right')
	},
	-- Close Panes
	{
		key = 'x',
		mods = 'LEADER',
		action = wezterm.action.CloseCurrentPane({ confirm = true })
	},
	-- Resize Panes
	{
		key = 'H',
		mods = 'LEADER|SHIFT',
		action = wezterm.action.AdjustPaneSize({ 'Left', 5 })
	},
	{
		key = 'J',
		mods = 'LEADER|SHIFT',
		action = wezterm.action.AdjustPaneSize({ 'Down', 5 })
	},
	{
		key = 'K',
		mods = 'LEADER|SHIFT',
		action = wezterm.action.AdjustPaneSize({ 'Up', 5 })
	},
	{
		key = 'L',
		mods = 'LEADER|SHIFT',
		action = wezterm.action.AdjustPaneSize({ 'Right', 5 })
	},
	-- Toggle Zoom/Maximize
	{
		key = 'z',
		mods = 'LEADER',
		action = wezterm.action.TogglePaneZoomState
	},

	-- Create/Close Tabs
	{
		key = 'c',
		mods = 'LEADER',
		action = wezterm.action.SpawnTab('CurrentPaneDomain')
	},
	{
		key = '&',
		mods = 'LEADER|SHIFT',
		action = wezterm.action.CloseCurrentTab({ confirm = true })
	},
	-- Select Tabs
	{
		key = '1',
		mods = 'LEADER',
		action = wezterm.action.ActivateTab(0)
	},
	{
		key = '2',
		mods = 'LEADER',
		action = wezterm.action.ActivateTab(1)
	},
	{
		key = '3',
		mods = 'LEADER',
		action = wezterm.action.ActivateTab(2)
	},
	{
		key = '4',
		mods = 'LEADER',
		action = wezterm.action.ActivateTab(3)
	},
	{
		key = '5',
		mods = 'LEADER',
		action = wezterm.action.ActivateTab(4)
	},
	{
		key = '6',
		mods = 'LEADER',
		action = wezterm.action.ActivateTab(5)
	},
	{
		key = '7',
		mods = 'LEADER',
		action = wezterm.action.ActivateTab(6)
	},
	{
		key = '8',
		mods = 'LEADER',
		action = wezterm.action.ActivateTab(7)
	},
	{
		key = '9',
		mods = 'LEADER',
		action = wezterm.action.ActivateTab(8)
	},
	{
		key = '0',
		mods = 'LEADER',
		action = wezterm.action.ActivateTab(9)
	},
	{
		key = 'p',
		mods = 'LEADER',
		action = wezterm.action.ActivateTabRelative(-1)
	},
	{
		key = 'n',
		mods = 'LEADER',
		action = wezterm.action.ActivateTabRelative(1)
	},
}

return multiplex

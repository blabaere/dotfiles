local wezterm = require 'wezterm';

return {
	font = wezterm.font("Fira Code"),
	font_size = 10,
	--color_scheme = "Tomorrow Night",
	color_scheme = "Solarized Dark Higher Contrast",
	debug_key_events = false,
	keys = {
		-- Ctrl + Shift + 't' : create tab

		-- Ctrl + Shift + 'ù' : create split to the right
		{key="raw:48", mods="CTRL|SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},

		-- Ctrl + Shift + '*' : create split below
		{key="raw:51", mods="CTRL|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},

		-- Ctrl + Shift + ')' : move to left tab
		{key="raw:20", mods="CTRL|SHIFT", action=wezterm.action{ActivateTabRelative=-1}},

		-- Ctrl + Shift + '=' : move to right tab
		{key="raw:21", mods="CTRL|SHIFT", action=wezterm.action{ActivateTabRelative=1}},
	},
	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = false,
	window_padding = {
    	left = 0,
    	right = 0,
    	top = 0,
    	bottom = 0
  }
}

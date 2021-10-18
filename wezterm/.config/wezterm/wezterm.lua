local wezterm = require 'wezterm';

return {
	font = wezterm.font("Fira Code"),
	font_size = 11,
	--color_scheme = "Tomorrow Night",
	color_scheme = "Solarized Dark Higher Contrast",
	debug_key_events = false,
	keys = {
		{key="raw:48", mods="CTRL|SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
		{key="raw:12", mods="CTRL|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
	},
}

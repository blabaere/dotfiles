local wezterm = require 'wezterm';

return {
	font = wezterm.font("Fira Code"),
	color_scheme = "Solarized Dark - Patched",
	debug_key_events = false,
	keys = {
		{key="raw:48", mods="CTRL|SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
		{key="raw:12", mods="CTRL|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
	},
}

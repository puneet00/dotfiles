-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
--local canonical_solarized = require "canonical_solarized"
--canonical_solarized.apply_to_config(config)
config.color_scheme = 'Solarized (light) (terminal.sexy)'
config.bold_brightens_ansi_colors = "No"
-- and finally, return the configuration to wezterm
return config

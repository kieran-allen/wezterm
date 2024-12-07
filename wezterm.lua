local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- The filled in variant of the < symbol
local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider

-- The filled in variant of the > symbol
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

config.color_scheme = "Catppuccin Mocha"
config.max_fps = 120
config.font = wezterm.font("JetBrainsMono NF", {
  weight = "Regular",
  stretch = "Expanded",
})
config.font_size = 13
config.line_height = 1.2
config.window_padding = {
  left = "2cell",
  right = "2cell",
  top = "1cell",
  bottom = "1cell",
}

config.tab_bar_at_bottom = false
config.use_fancy_tab_bar = false
config.window_background_opacity = 0.95
config.macos_window_background_blur = 50
config.leader = {
  key = "a",
  mods = "CTRL",
  timeout_milliseconds = 1000,
}

config.keys = {
  {
    mods = "LEADER",
    key = "-",
    action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" },
  },
  {
    mods = "LEADER",
    key = "=",
    action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" },
  },
  {
    mods = "LEADER",
    key = "m",
    action = wezterm.action.TogglePaneZoomState,
  },
  {
    mods = "LEADER",
    key = "x",
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  {
    key = "h",
    mods = "LEADER",
    action = wezterm.action.ActivatePaneDirection "Left",
  },
  {
    key = "l",
    mods = "LEADER",
    action = wezterm.action.ActivatePaneDirection "Right",
  },
  {
    key = "k",
    mods = "LEADER",
    action = wezterm.action.ActivatePaneDirection "Up",
  },
  {
    key = "j",
    mods = "LEADER",
    action = wezterm.action.ActivatePaneDirection "Down",
  },
}

return config

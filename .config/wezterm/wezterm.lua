local wezterm = require("wezterm")
local mux = wezterm.mux

local config = {}
wezterm.on("gui-startup", function()
  local _, _, window = mux.spawn_window({})
  window:gui_window():maximize()
end)

if wezterm.config_builder() then
  config = wezterm.config_builder()
end

config.keys = {
  {
    key = "k",
    mods = "CMD",
    action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
  },
}

config.window_decorations = "RESIZE"
--config.window_background_image = "/Users/void/.config/wallpapers/terminal_wallpaper.jpg"
--config.window_background_image_hsb = {
-- brightness = 0.02,
--hue = 0.2,
-- saturation = 1,
--}
config.window_background_opacity = 1
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.colors = {
  background = "#111111",
}

config.font = wezterm.font("Berkeley Mono")
config.font_size = 14
config.use_fancy_tab_bar = false
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

config.enable_scroll_bar = false
config.tab_bar_at_bottom = false
config.freetype_load_target = "HorizontalLcd"

return config

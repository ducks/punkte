---------------------------
-- sasquatch awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = os.getenv("HOME") .. "/.config/awesome/themes/"

local theme = {}

theme.font          = "Anka/Coder Regular 10"

theme.bg_normal     = "#292929"
theme.bg_focus      = "#333333"
theme.bg_urgent     = "#fb2c48"
theme.bg_minimize   = "#292929"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#d2dad8"
theme.fg_focus      = "#d2dad8"
theme.fg_urgent     = "#d2dad8"
theme.fg_minimize   = "#d2dad8"

theme.useless_gap   = dpi(1)
theme.border_width  = dpi(1)
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

local symbol = " 〇 "
-- local symbol = " ○ "
theme.tagnames = { symbol, symbol, symbol }

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."sasquatch/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
--theme.titlebar_bg_normal = "#333333FF"
--theme.titlebar_bg_focus =  "#333333FF"
--theme.titlebar_bg_image = themes_path.."sasquatch/titlebar/background.jpg"
theme.titlebar_close_button_normal = themes_path.."sasquatch/icons/close.svg"
theme.titlebar_close_button_focus  = themes_path.."sasquatch/titlebar/close.svg"
theme.titlebar_minimize_button_normal = themes_path.."sasquatch/titlebar/minimize.svg"
theme.titlebar_minimize_button_focus  = themes_path.."sasquatch/titlebar/minimize.svg"
theme.titlebar_ontop_button_normal_inactive = themes_path.."sasquatch/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."sasquatch/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."sasquatch/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."sasquatch/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."sasquatch/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."sasquatch/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."sasquatch/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."sasquatch/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."sasquatch/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."sasquatch/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."sasquatch/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."sasquatch/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."sasquatch/titlebar/maximize.svg"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."sasquatch/titlebar/maximize.svg"
theme.titlebar_maximized_button_normal_active = themes_path.."sasquatch/titlebar/maximized.svg"
theme.titlebar_maximized_button_focus_active  = themes_path.."sasquatch/titlebar/maximized.svg"

theme.wallpaper = themes_path.."sasquatch/background.jpg"

theme.volume_icon = themes_path.."sasquatch/icons/spkr.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."sasquatch/layouts/fairhw.png"
theme.layout_fairv = themes_path.."sasquatch/layouts/fairvw.png"
theme.layout_floating  = themes_path.."sasquatch/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."sasquatch/layouts/magnifierw.png"
theme.layout_max = themes_path.."sasquatch/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."sasquatch/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."sasquatch/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."sasquatch/layouts/tileleftw.png"
theme.layout_tile = themes_path.."sasquatch/layouts/tilew.png"
theme.layout_tiletop = themes_path.."sasquatch/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."sasquatch/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."sasquatch/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."sasquatch/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."sasquatch/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."sasquatch/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."sasquatch/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80

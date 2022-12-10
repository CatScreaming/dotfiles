local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")

local M = {}

M.myawesomemenu = {
   { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "edit config", editor_cmd .. " " .. awesome.conffile },
   { "restart", awesome.restart },
   { "quit", function() awesome.quit() end },
}

M.mymainmenu = awful.menu({ items = { { "awesome", M.myawesomemenu, beautiful.awesome_icon },
                                    { "open terminal", terminal }
                                  }
                        })

M.mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = M.mymainmenu })

-- Menubar configuration
M.menubar.utils.terminal = terminal -- Set the terminal for applications that require it

return M


local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")
local beautiful = require("beautiful")

local editor = os.getenv("EDITOR") or "nvim"
local editor_cmd = RC.vars.terminal .. " -e " .. editor

local awesomeMenu = {
	{ "Hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
	{ "Edit config", editor_cmd .. " " .. awesome.conffile },
	{ "Reload config", awesome.restart },
	{ "Quit", function() awesome.quit() end },
}


local _M = {
	{ "Awesome", awesomeMenu, beautiful.awesome_icon },
	{ "Terminal", RC.vars.terminal }
}

return _M


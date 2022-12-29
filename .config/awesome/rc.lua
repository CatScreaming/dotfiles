pcall(require, "luarocks.loader")
local awful = require("awful")
require("awful.autofocus")
local beautiful = require("beautiful")
local naughty = require("naughty")
require("main.error-handling")

beautiful.init("~/.config/awesome/theme.lua")

RC = {}
RC.vars = require("main.variables")
require("main.tags")
require("main.signals")
RC.mainmenu = awful.menu({ items = require("main.menu") })

RC.globalkeys = require("bindings.globalkeys")
RC.client_binding = require("bindings.clientkeys")

awful.rules.rules = require("main.rules").rules(RC.client_binding.keys, RC.client_binding.buttons)
root.keys(RC.globalkeys)

require("deco.menubar")
require("deco.statusbar")

-- Autostart
awful.spawn("picom -b")

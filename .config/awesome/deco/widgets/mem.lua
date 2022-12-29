local wibox = require("wibox.init")
--local beautiful = require("beautiful")
local vicious_status, vicious = pcall(require, "vicious")

local memwidget = wibox.widget.graph()
memwidget:set_width(50)
memwidget:set_step_width(2)
memwidget:set_step_spacing(1)
memwidget:set_background_color("#00000000")
memwidget:set_color("linear:0,0:0,20:0,#FF0000:0.3,#FFFF00:0.6,#EE4B2B")

if vicious_status then
	vicious.register(memwidget, vicious.widgets.mem, "$1", 5)
end

return wibox.container.mirror(memwidget, { horizontal = true })

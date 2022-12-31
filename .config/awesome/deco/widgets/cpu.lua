local wibox = require("wibox.init")
local beautiful = require("beautiful")
local vicious_status, vicious = pcall(require, "vicious")

local cpuwidget = wibox.widget.graph()
cpuwidget:set_width(50)
cpuwidget:set_step_width(2)
cpuwidget:set_step_spacing(1)
cpuwidget:set_background_color("#00000000")
cpuwidget:set_color("linear:0,0:0,20:0,#FF0000:0.3,#FFFF00:0.6," .. beautiful.color_cpu)

if vicious_status then
	vicious.register(cpuwidget, vicious.widgets.cpu, "$1", 2)
end

return wibox.widget({
	layout = wibox.layout.stack,
	wibox.widget({
		widget = wibox.widget.textbox,
		valign = "top",
		text = "CPU",
		font = "sans 6",
	}),
	wibox.container.mirror(cpuwidget, { horizontal = true }),
})

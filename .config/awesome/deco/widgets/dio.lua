local wibox = require("wibox.init")
local beautiful = require("beautiful")
local vicious_status, vicious = pcall(require, "vicious")

local inputwidget = wibox.widget.graph()
-- inputwidget:set_scale(true)
inputwidget:set_width(25)
inputwidget:set_step_width(2)
inputwidget:set_step_spacing(1)
inputwidget:set_background_color("#00000000")
inputwidget:set_color(beautiful.color_input)

local outputwidget = wibox.widget.graph()
-- outputwidget:set_scale(true)
outputwidget:set_width(25)
outputwidget:set_step_width(2)
outputwidget:set_step_spacing(1)
outputwidget:set_background_color("#00000000")
outputwidget:set_color(beautiful.color_output)

if vicious_status then
	vicious.cache(vicious.widgets.dio)
	vicious.register(inputwidget, vicious.widgets.dio, "${sda write_kb}", 3)
	vicious.register(outputwidget, vicious.widgets.dio, "${sda read_kb}", 3)
end

return wibox.widget({
	layout = wibox.layout.stack,
	wibox.widget({
		widget = wibox.widget.textbox,
		valign = "top",
		text = "DIO",
		font = "sans 6",
	}),
	wibox.widget({
		layout = wibox.layout.fixed.horizontal(),
		wibox.container.mirror(inputwidget, { horizontal = true }),
		wibox.container.mirror(outputwidget, { horizontal = true }),
	}),
})

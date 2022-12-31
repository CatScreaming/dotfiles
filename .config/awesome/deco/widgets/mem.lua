local wibox = require("wibox.init")
local beautiful = require("beautiful")
local vicious_status, vicious = pcall(require, "vicious")

local memwidget = wibox.widget.graph()
memwidget:set_width(30)
memwidget:set_step_width(2)
memwidget:set_step_spacing(1)
memwidget:set_background_color("#00000000")
memwidget:set_color(beautiful.color_mem)

if vicious_status then
	vicious.register(memwidget, vicious.widgets.mem, "$1", 5)
end

return wibox.widget({
	layout = wibox.layout.stack,
	wibox.widget({
		widget = wibox.widget.textbox,
		valign = "top",
		text = "MEM",
		font = "sans 6",
	}),
	wibox.container.mirror(memwidget, { horizontal = true }),
})

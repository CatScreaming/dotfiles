local wibox = require("wibox.init")
local beautiful = require("beautiful")
local vicious_status, vicious = pcall(require, "vicious")

local gputemp_widget = wibox.widget.textbox()

if vicious_status then
	-- vicious.register(gputemp_widget, vicious.widgets.hwmontemp, "$1 °C", 2, { "radeon", 2 })
end

return gputemp_widget

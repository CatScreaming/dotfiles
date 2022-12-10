local awful = require("awful")

local tags = {}
awful.screen.connect_for_each_screen(function (s)
	tags[s] = awful.tag({ "Τόφι", "Σ", "λ", "π", "ψ", "μ", "α", "β", "γ" }, s, {awful.layout.layouts[2]})
end)

return tags


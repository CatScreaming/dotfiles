local awful = require("awful")

local _M = {}
_M.loadTags = function ()
	awful.screen.connect_for_each_screen(function (s)
		awful.tag({ "Τόφι", "Σ", "λ", "π", "ψ", "μ", "α", "β", "γ" }, s, {awful.layout.suit.tile})
	end)
end

return _M


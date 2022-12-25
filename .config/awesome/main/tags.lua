local awful = require("awful")

awful.screen.connect_for_each_screen(function(s)
	awful.tag({ "Σ", "Ω", "λ", "π", "μ", "ψ", "α", "β", "γ" }, s, { awful.layout.suit.tile })
end)

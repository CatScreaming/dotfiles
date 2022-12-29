local awful = require("awful")
local wibox = require("wibox")

client.connect_signal("request::titlebars", function(c)
	return awful
		.titlebar(c, {
			size = 20,
		})
		:setup({
			{ -- Left
				awful.titlebar.widget.iconwidget(c),
				layout = wibox.layout.fixed.horizontal,
			},
			{ -- Middle
				{
					widget = awful.titlebar.widget.titlewidget(c),
					align = "center",
					font = "FiraCodeNerdFontMono 8",
				},
				layout = wibox.layout.flex.horizontal,
			},
			{ -- Right
				awful.titlebar.widget.floatingbutton(c),
				--awful.titlebar.widget.maximizedbutton(c),
				awful.titlebar.widget.stickybutton(c),
				awful.titlebar.widget.ontopbutton(c),
				--awful.titlebar.widget.closebutton(c),
				layout = wibox.layout.fixed.horizontal,
			},
			layout = wibox.layout.align.horizontal,
		})
end)

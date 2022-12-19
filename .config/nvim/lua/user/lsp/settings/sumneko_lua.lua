return {
	settings = {
		Lua = {
			completion = {
				enable = true
			},
			diagnostics = {
				globals = { "vim", "awesome", "client" },
			},
			workspace = {
				library = {
					--[vim.fn.expand "$VIMRUNTIME/lua"] = true,
					--[vim.fn.stdpath "config" .. "/lua"] = true,
					["/usr/share/nvim/runtime/lua"] = true,
					["/usr/share/awesome/lib"] = true,
					["/usr/share/awesome/lib/wibox/widget/"] = true,
				},
			},
			telemetry = {
				enable = false,
			},
		},
	},
}

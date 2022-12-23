return {
	settings = {
		Lua = {
			completion = {
				enable = true,
			},
			diagnostics = {
				globals = { "vim", "awesome", "client", "root", "screen", "RC" },
			},
			workspace = {
				library = {
					["/usr/share/nvim/runtime/lua"] = true,
					["/usr/share/awesome/lib"] = true,
					["~/.local/share/nvim/site/pack/packer/start/"] = true,
				},
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	},
}

local status_cs, cs = pcall(require, "catppuccin")
if not status_cs then
	return
end

cs.setup({
	flavour = "mocha",
	transparent_background = true,
	color_overrides = {
		all = {
			surface0 = "#828282",
			surface1 = "#9b9b9b",
			surface2 = "#ababab",
		},
	},
})

vim.cmd.colorscheme("catppuccin")

local status_cs, cs = pcall(require, "catppuccin")
if not status_cs then
	return
end

cs.setup({
	transparent_background = true,
	color_overrides = {
		mocha = {
			surface0 = "#828282",
			surface1 = "#9b9b9b",
			surface2 = "#ababab",
		},
	},
})

if OS_NAME == "Windows_NT" then
	vim.cmd.colorscheme("catppuccin-latte")
else
	vim.cmd.colorscheme("catppuccin-mocha")
end

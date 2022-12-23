local status_cs, _ = pcall(vim.cmd, "colorscheme default")
if not status_cs then
	return
end
-- Do not let colorscheme set a terminal background
vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])

-- Vim Default
require "user.options"
require "user.keymaps"
-- require "user.colorscheme"
-- Vim Plugins 
require "user.plugins"
require "user.cmp"
require "user.lsp"
require "user.treesitter"
require "user.nvim-tree"

local colorscheme = "default"
local status_cs, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_cs then
	return
end
vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]


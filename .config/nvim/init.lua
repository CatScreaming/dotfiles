require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.cmp"
require "user.lsp"

local colorscheme = "default"
local status_cs, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_cs then
	return
end


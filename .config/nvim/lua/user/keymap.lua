local k = vim.keymap.set
local opts = { silent = true }
k("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Normal Mode --
-- Window navigation
k("n", "<C-h>", "<C-w>h", opts)
k("n", "<C-j>", "<C-w>j", opts)
k("n", "<C-k>", "<C-w>k", opts)
k("n", "<C-l>", "<C-w>l", opts)

-- Buffer navigation
k("n", "<S-l>", ":bnext<CR>", opts)
k("n", "<S-h>", ":bprevious<CR>", opts)

-- Resize window
k("n", "<C-Up>", ":resize -2<CR>", opts)
k("n", "<C-Down>", ":resize +2<CR>", opts)
k("n", "<C-Left>", ":vertical resize -2<CR>", opts)
k("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Close buffer
k("n", "<S-q>", "<cmd>bdelete!<CR>", opts)

-- Clear highlight
k("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Better paste
k("v", "p", '"_dP', opts)

-- Spawn IDE-like Terminal at the bottom
k("n", "<leader>t", function ()
	local os_name = vim.loop.os_uname().sysname
	if os_name == "Linux" then
		vim.cmd("silent ! kitty @ --to=$KITTY_LISTEN_ON launch --type window --cwd $PWD")
		vim.cmd("silent ! kitty @ --to=$KITTY_LISTEN_ON resize-window -a vertical -i -16")
	elseif os_name == "Windows_NT" then
		vim.cmd("silent ! wt.exe -w 0 split-pane -H -s .2")
	end
end, opts)

-- Visual Mode --

-- Indenting mode
k("v", "<", "<gv", opts)
k("v", ">", ">gv", opts)

-- Plugins --
-- NvimTree
k("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- LSP
k("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)
k("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
k("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
k("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
k("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
k("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
k("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
k("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)
k("n", "<leader>li", "<cmd>LspInfo<cr>", opts)
k("n", "<leader>lI", "<cmd>LspInstallInfo<cr>", opts)
k("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
k("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
k("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
k("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
k("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
k("n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

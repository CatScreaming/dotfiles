--Basics
local k = vim.keymap.set
local opts = {silent=true}
k("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
--Normal
--Window navigation
k("n", "<C-h>", "<C-w>h", opts)
k("n", "<C-j>", "<C-w>j", opts)
k("n", "<C-k>", "<C-w>k", opts)
k("n", "<C-l>", "<C-w>l", opts)
--Resize window
k("n", "<C-Up>", ":resize -2<CR>", opts)
k("n", "<C-Down>", ":resize +2<CR>", opts)
k("n", "<C-Left>", ":vertical resize -2<CR>", opts)
k("n", "<C-Right>", ":vertical resize +2<CR>", opts)
--Buffer navigation
k("n", "<S-l>", ":bnext<CR>", opts)
k("n", "<S-h>", ":bprevious<CR>", opts)
--Close buffer
k("n", "<S-q>", "<cmd>bdelete!<CR>", opts)
--Clear highlight
k("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)
--Better paste
k("v", "p", '"_dP', opts)
--Visual
--Indent mode
k("v", "<", "<gv", opts)
k("v", ">", ">gv", opts)
--Plugins


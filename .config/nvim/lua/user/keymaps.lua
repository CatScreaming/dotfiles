local k = vim.keymap.set
local opts = {silent=true}

-- Basic --
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

-- Visual Mode --
-- Indenting mode
k("v", "<", "<gv", opts)
k("v", ">", ">gv", opts)

-- Plugins --
k("n", "<leader>e", ":NvimTreeToggle<CR>", opts)


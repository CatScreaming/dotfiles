local _M = {}
local k = vim.keymap.set
local opts = { silent = true }

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

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--System
vim.opt.backup=false
vim.opt.writebackup=false
vim.opt.swapfile=false
vim.opt.undofile=false
vim.opt.fileencoding="utf-8"
vim.opt.clipboard:append("unnamedplus,unnamed")
vim.opt.updatetime=500
vim.opt.timeoutlen=1000
--Appearance
vim.opt.termguicolors=true
vim.opt.guifont="monospace:h17"
vim.opt.mouse="a"
vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.cursorline=true
vim.opt.showcmd=false
vim.opt.showmode=false
vim.opt.showtabline=0
vim.opt.signcolumn="yes"
vim.opt.cmdheight=1
vim.opt.conceallevel=0
vim.opt.pumheight=10
vim.opt.fillchars.eob=" "
vim.opt.completeopt={"menuone","noselect"}
--Search
vim.opt.ignorecase=true
vim.opt.hlsearch=true
--Indentation
vim.opt.smartcase=true
vim.opt.smartindent=true
vim.opt.expandtab=false
vim.opt.shiftwidth=4
vim.opt.tabstop=4
--Behavior
vim.opt.linebreak=true
vim.opt.scrolloff=8
vim.opt.sidescrolloff=8
vim.opt.laststatus=3
vim.opt.splitbelow=true
vim.opt.splitright=true
vim.opt.iskeyword:append("-")
vim.opt.whichwrap:append("<,>,[,],h,l")


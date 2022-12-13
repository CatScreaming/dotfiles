local fn = vim.fn

--Save file to reload plugins
vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

local status_packer, packer = pcall(require, "packer")
if not status_packer then return print("packer not found! Vim is running without plugins.") end

packer.init {
	display = {
		open_fn = (require"packer.util").float,
	},
	git = {
		clone_timeout = 300,
	},
}

return packer.startup(function(use)
	use 'wbthomason/packer.nvim'

	--CMP
	use { "hrsh7th/nvim-cmp", commit = "b0dff0ec4f2748626aae13f011d1a47071fe9abc" }
	use { "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" }
	use { "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" }
	use { "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" }
	use { "L3MON4D3/LuaSnip", commit = "8f8d493e7836f2697df878ef9c128337cbf2bb84" } 

	--LSP
	use { "neovim/nvim-lspconfig", commit = "f11fdff7e8b5b415e5ef1837bdcdd37ea6764dda" }
	use { "williamboman/mason.nvim", commit = "c2002d7a6b5a72ba02388548cfaf420b864fbc12"}
	use { "williamboman/mason-lspconfig.nvim", commit = "0051870dd728f4988110a1b2d47f4a4510213e31" }

	use {"nvim-treesitter/nvim-treesitter",  run = ":TSUpdate" }


	use {"nvim-tree/nvim-tree.lua", requires = {"nvim-tree/nvim-web-devicons"}}

	use {"folke/tokyonight.nvim"}


	
	if PACKER_BOOTSTRAP then require("packer").sync() end
end)


--Save file to reload plugins
vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]])

local status_packer, packer = pcall(require, "packer")
if not status_packer then
	return print("WARN: packer not found! Vim is running without plugins.")
end

packer.init({
	display = {
		open_fn = (require("packer.util")).float,
	},
	git = {
		clone_timeout = 300,
	},
})

return packer.startup(function(use)
	use({ "wbthomason/packer.nvim" })
	use({ "nvim-lua/plenary.nvim" })

	-- Completion
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "L3MON4D3/LuaSnip" })

	-- LSP
	use({ "neovim/nvim-lspconfig" })
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })

	-- Highlighting, formatting and linting
	use({ "nvim-treesitter/nvim-treesitter" })
	use({ "jose-elias-alvarez/null-ls.nvim" })

	use({ "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons" } })
end)

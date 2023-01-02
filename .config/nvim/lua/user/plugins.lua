local status_packer, packer = pcall(require, "packer")
if not status_packer then
	return print("WARN: packer not found! Vim is running without plugins.")
end

-- Save file to reload plugins
vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]])

packer.init({
	display = {
		open_fn = (require("packer.util")).float,
	},
	git = {
		clone_timeout = 300,
		depth = 1,
	},
})

local function checkInstalled(program)
	if vim.fn.executable(program) == 1 then
		return false
	end
	return true
end

return packer.startup(function(use)
	use({ "wbthomason/packer.nvim" })
	use({ "nvim-lua/plenary.nvim" })

	-- Colorscheme
	use({ "catppuccin/nvim", as = "catppuccin", before = "akinsho/bufferline" })

	-- Completion
	use({ "L3MON4D3/LuaSnip" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })

	-- LSP
	use({ "neovim/nvim-lspconfig" })
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	-- Java LSP
	use({ "mfussenegger/nvim-jdtls", disable = checkInstalled("java"), ft = "java" })

	-- Highlighting, formatting and linting
	use({ "nvim-treesitter/nvim-treesitter" })
	use({ "jose-elias-alvarez/null-ls.nvim" })

	-- Previews
	use({
		"iamcco/markdown-preview.nvim",
		disable = checkInstalled("node") and checkInstalled("npm"),
		config = function()
			require("user.opt.preview-markdown")
		end,
		run = "cd app && npm install",
		ft = "markdown",
	})

	-- TODO: Latex preview
	--use({ })

	-- Coding QoL
	use({ "lewis6991/gitsigns.nvim", disable = checkInstalled("git") })

	use({ "windwp/nvim-autopairs" })
	use({ "numToStr/Comment.nvim" })

	-- Explorer and bufferline
	use({ "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons" } })
	use({ "akinsho/bufferline.nvim", requires = { "nvim-tree/nvim-web-devicons" } })
	use({ "feline-nvim/feline.nvim" })
end)

local treesitter_configs_status, configs = pcall(require, "nvim-treesitter.configs")
if not treesitter_configs_status then return end

configs.setup({
	ensure_installed = { "lua", "javascript" },
	sync_install = false,

	highlight = {
		enable = true
	},

	indent = {
		enable = true
	}
})

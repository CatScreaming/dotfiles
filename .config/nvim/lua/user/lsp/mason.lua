local servers = {
	"sumneko_lua"
}

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local status_lspconfig, lspconfig = pcall(require, "lspconfig")
if not status_lspconfig then return print("Plugin <lspconfig> is missing.") end

local opts = {}
for _, server in pairs(servers) do
	opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	local status_settings, conf_opts = pcall(require, "user.lsp.settings." .. server)
	if status_settings then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end


local servers = {
	"bashls",
	"sumneko_lua",
	"texlab",
}

local lspconfig_status, lspconfig = pcall(require, "lspconfig")
local mason_status, mason = pcall(require, "mason")
if not lspconfig_status or not mason_status then
	return print("ERR: lspconfig/mason failed to load")
end

mason.setup()
require("mason-lspconfig").setup()

local handlers = require("user.lsp.handlers")
if handlers == nil then
	return
end
handlers.setup()

local opts = {}
for _, server in pairs(servers) do
	opts = {
		on_attach = handlers.on_attach,
		capabilities = handlers.capabilities,
	}

	server = vim.split(server, "@")[1]

	local status_settings, conf_opts = pcall(require, "user.lsp.settings." .. server)
	if status_settings then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end
	lspconfig[server].setup(opts)
end

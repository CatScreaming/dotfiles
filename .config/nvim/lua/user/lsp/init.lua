LANGUAGES = {}
-- LSP Servers to be installed - Check :Mason
LANGUAGES.servers = {
	--"bashls",
	--"sumneko_lua",
	--"texlab",
}
-- Treesitter languages to be installed - Check :TSInstallInfo
-- FOR WINDOWS: Run nvim once in VS Dev Console after updating
LANGUAGES.treesitter = {
	--"bash",
	--"lua",
	--"markdown",
}

require("user.lsp.treesitter")
require("user.lsp.mason")
require("user.lsp.null-ls")

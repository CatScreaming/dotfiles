LANGUAGES = {}
-- LSP Servers to be setup by lspconfig - Check :Mason
LANGUAGES.servers = {}
-- Treesitter languages to be installed - Check :TSInstallInfo
-- FOR WINDOWS: Run nvim once in VS Dev Console after updating
LANGUAGES.treesitter = {}

local lang_status, _ = pcall(require, "user.lsp.server_config")
if not lang_status then
	print("LSP server configuration not found. Please create nvim/lua/user/lsp/server_config.lua")
end

table.insert(LANGUAGES.servers, "sumneko_lua")
table.insert(LANGUAGES.treesitter, "lua")

require("user.lsp.treesitter")
require("user.lsp.mason")
require("user.lsp.null-ls")

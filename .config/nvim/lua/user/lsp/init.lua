local status_lspconfig, _ = pcall(require, "lspconfig")
if not status_lspconfig then return end

require "user.lsp.mason"
require ("user.lsp.handlers").setup()
--require "user.lsp.null-ls"

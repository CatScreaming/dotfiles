local status_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_cmp then
	return print("ERR: Plugin cmp_nvim_lsp not loaded.")
end

local _M = {}

_M.capabilities = vim.lsp.protocol.make_client_capabilities()
_M.capabilities.textDocument.completion.completionItem.snippetSupport = true
_M.capabilities = cmp_nvim_lsp.default_capabilities(_M.capabilities)

_M.on_attach = function(client, bufnr)
	if client.name == "tsserver" then
		client.server_capabilities.documentFormattingProvider = false
	end
end

_M.setup = function()
	local signs = {
		{ name = "DiagnosticSignError", text = "" },
		{ name = "DiagnosticSignWarn", text = "" },
		{ name = "DiagnosticSignHint", text = "" },
		{ name = "DiagnosticSignInfo", text = "" },
	}

	for _, sign in ipairs(signs) do
		vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
	end

	local config = {
		virtual_text = false,
		signs = {
			active = signs,
		},
		update_in_insert = true,
		underline = true,
		severity_sort = true,
		float = {
			focusable = true,
			style = "minimal",
			source = "always",
			header = "",
			prefix = "",
		},
	}

	vim.diagnostic.config(config)
end

return _M

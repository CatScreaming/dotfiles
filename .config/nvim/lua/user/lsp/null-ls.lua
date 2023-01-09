local null_ls_status, null_ls = pcall(require, "null-ls")
if not null_ls_status then
	return print("WARN: Plugin null-ls not loaded.")
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	sources = {
		formatting.stylua,
		formatting.prettier,
	},
})

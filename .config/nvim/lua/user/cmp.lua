local cmp_status, cmp = pcall(require, "cmp")
local snip_status, snip = pcall(require, "luasnip")

if not cmp_status or not snip_status then
	print("cmp couldn't load! No autocompletion available.")
	return
end

cmp.setup({
	snippet = {
		expand = function(args)
			snip.lsp_expand(args.body)
		end,
	},

	mapping = cmp.mapping.preset.insert({ 
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
		["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
		["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		["<C-e>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),

	sources = {
		{ name = "nvim_lsp"},
		{ name = "buffer" },
		{ name = "path" },
	},
})


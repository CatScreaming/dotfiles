require("gitsigns").setup({
	on_attach = function(bufnr)
		local gs = package.loaded.gitsigns

		vim.keymap.set("n", "<leader>gb", function()
			gs.blame_line({ full = true })
		end)
	end,
})

-- Spellchecking
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "text", "tex", "markdown", "gitcommit" },
	command = "setlocal spell",
})

-- Quick closing for info buffers
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "qf", "help", "man", "lspinfo", "spectre_panel" },
	callback = function()
		vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR> 
      set nobuflisted 
    ]])
	end,
})

-- Better commit message editing
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "gitcommit", "gitrebase" },
	command = "startinsert | 1",
})

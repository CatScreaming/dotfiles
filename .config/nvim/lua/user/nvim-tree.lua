local ntree_status, nvim_tree = pcall(require, "nvim-tree")
if not ntree_status then
	return
end

nvim_tree.setup({
	diagnostics = {
		enable = true,
	},
})

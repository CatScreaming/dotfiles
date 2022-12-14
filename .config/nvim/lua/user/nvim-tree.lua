local status_ntree, nvim_tree = pcall(require, "nvim-tree")
if not status_ntree then return end

nvim_tree.setup()

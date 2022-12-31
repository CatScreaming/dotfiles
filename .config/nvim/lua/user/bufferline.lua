local bufferline_status, bufferline = pcall(require, "bufferline")
if not bufferline_status then
	return
end

bufferline.setup({
	options = {
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
	},
	highlights = require("catppuccin.groups.integrations.bufferline").get({
		styles = { "italic", "bold" },
	}),
})

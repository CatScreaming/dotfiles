local autopairs_status, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_status then
	return
end

local rule = require("nvim-autopairs.rule")

autopairs.setup({
	check_ts = true,
})

autopairs.add_rule(rule("$", "$", { "tex", "latex", "markdown" }))

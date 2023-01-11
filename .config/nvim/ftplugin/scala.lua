local metals_status, metals = pcall(require, "metals")
if not metals_status then
	return
end

package.path = "../?.lua;" .. package.path
metals.initialize_or_attach(require("user.lsp.settings.metals"))

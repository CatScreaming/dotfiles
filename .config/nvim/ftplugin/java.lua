local jdtls_status, jdtls = pcall(require, "jdtls")
if not jdtls_status then
	return
end

package.path = "../?.lua;" .. package.path
jdtls.start_or_attach(require("user.lsp.settings.jdtls"))

local feline_status, feline = pcall(require, "feline")
if not feline_status then
	return
end

feline.setup({})

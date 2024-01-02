require("lualine").setup({
	options = {
		theme = "everforest",
	},
})
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

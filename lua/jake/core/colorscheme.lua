require("rose-pine").setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = "dawn",
	--- @usage 'main'|'moon'|'dawn'
	disable_background = true,
})
require("everforest").setup({
	-- Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
	-- Default is "medium".
	background = "soft",
	-- How much of the background should be transparent. Options are 0, 1 or 2.
	-- Default is 0.
	--
	-- 2 will have more UI components be transparent (e.g. status line
	-- background).
	transparent_background_level = 0,
	-- Whether italics should be used for keywords, builtin types and more.
	italics = false,
	-- Disable italic fonts for comments. Comments are in italics by default, set
	-- this to `true` to make them _not_ italic!
	disable_italic_comments = false,
})

vim.g.material_style = "lighter"

-- Set colorscheme after options
local status, _ = pcall(vim.cmd, "colorscheme rose-pine")
if not status then
	print("Colorscheme not found!")
	return
end

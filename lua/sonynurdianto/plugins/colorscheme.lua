-- return {
-- 	"sainnhe/gruvbox-material",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		--vim.g.lualine_theme = "gruvbox_material"
-- 		vim.g.gruvbox_material_enable_italic = true
-- 		vim.g.gruvbox_material_enable_bold = true
-- 		vim.g.gruvbox_material_background = "soft"
-- 		vim.cmd("colorscheme gruvbox-material")
-- 	end,
-- }
return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme tokyonight")
	end,
}

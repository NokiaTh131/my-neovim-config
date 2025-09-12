return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				variant = "auto",
				dark_variant = "main",
				styles = {
					transparency = true,
				},
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
	},
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		config = function()
			vim.g.gruvbox_material_transparent_background = 2
			vim.g.gruvbox_material_float_style = "none"
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
	},
}

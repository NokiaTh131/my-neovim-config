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
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				float = {
					transparent = true,
					solid = false,
				},
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		opts = {
			transparent = true,
		},
	},
	{
		"mcauley-penney/techbase.nvim",
		opts = {
			italic_comments = true,
			transparent = true,
		},
	},
	{
		"sainnhe/sonokai",
		lazy = false,
		config = function()
			vim.g.sonokai_transparent_background = 2
			vim.g.sonokai_float_style = "none"
			vim.g.sonokai_diagnostic_virtual_text = "colored"
			vim.g.sonokai_current_word = "high contrast background"
		end,
	},
}

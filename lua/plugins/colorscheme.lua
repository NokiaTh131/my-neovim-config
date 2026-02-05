return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
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
		"uhs-robert/oasis.nvim",
		lazy = false,
		config = function()
			require("oasis").setup({
				transparent = true,
			})
		end,
	},
	{
		"oskarnurm/koda.nvim",
		lazy = false,
		config = function() end,
	},
}

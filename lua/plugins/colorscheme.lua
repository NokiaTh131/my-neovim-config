return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				variant = "auto", -- auto, main, moon, or dawn
				dark_variant = "main", -- main, moon, or dawn

				styles = {
					transparency = true,
				},

				highlight_groups = {
					VertSplit = { fg = "muted", bg = "muted" },
					Visual = { fg = "base", bg = "text", inherit = false },
					BlinkCmpMenu = { bg = "base", fg = "text" },
					DiagnosticVirtualTextError = { bg = "overlay", fg = "love" },
					DiagnosticVirtualTextWarn = { bg = "overlay", fg = "gold" },
					DiagnosticVirtualTextInfo = { bg = "overlay", fg = "foam" },
					DiagnosticVirtualTextHint = { bg = "overlay", fg = "iris" },
				},
			})

			vim.cmd("colorscheme rose-pine-main")
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
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
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({
				options = {
					transparent = true,
				},
			})
		end,
	},
}

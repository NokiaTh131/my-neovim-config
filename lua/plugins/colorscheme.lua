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
		"vague2k/vague.nvim",
		lazy = false,
		config = function()
			require("vague").setup({
				transparent = true,
			})
		end,
	},
}

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
				dim_inactive_windows = false,
				extend_background_behind_borders = true,

				enable = {
					terminal = true,
					legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},

				styles = {
					bold = true,
					italic = true,
					transparency = true,
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},
			})

			vim.cmd("colorscheme rose-pine-main")

			-- Override LSP suggestion menu to be non-transparent
			vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = "#191724", fg = "#e0def4" })
			vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { bg = "#191724", fg = "#524f67" })
			vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { bg = "#26233a", fg = "#e0def4" })
			vim.api.nvim_set_hl(0, "BlinkCmpDoc", { bg = "#191724", fg = "#e0def4" })
			vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { bg = "#191724", fg = "#524f67" })
			vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelp", { bg = "#191724", fg = "#e0def4" })
			vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelpBorder", { bg = "#191724", fg = "#524f67" })

			-- Override diagnostic virtual text to be non-transparent
			vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "#2d2a40", fg = "#eb6f92" })
			vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "#2d2a3a", fg = "#f6c177" })
			vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "#2a2d3a", fg = "#9ccfd8" })
			vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = "#2a2d35", fg = "#c4a7e7" })
		end,
	},
}

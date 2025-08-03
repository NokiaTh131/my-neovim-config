-- Function to load saved colorscheme
local function load_colorscheme()
	local data_path = vim.fn.stdpath("data")
	local colorscheme_file = data_path .. "/colorscheme.txt"

	if vim.fn.filereadable(colorscheme_file) == 1 then
		local saved_colorscheme = vim.fn.readfile(colorscheme_file)[1]
		if saved_colorscheme and saved_colorscheme ~= "" then
			pcall(vim.cmd.colorscheme, saved_colorscheme)
			return
		end
	end

	-- Default colorscheme if none saved
	vim.cmd("colorscheme rose-pine-main")
end

-- Function to save current colorscheme
local function save_colorscheme()
	local data_path = vim.fn.stdpath("data")
	local colorscheme_file = data_path .. "/colorscheme.txt"
	local current_colorscheme = vim.g.colors_name
	if current_colorscheme then
		vim.fn.writefile({ current_colorscheme }, colorscheme_file)
	end
end

-- Auto-save colorscheme when changed
vim.api.nvim_create_autocmd("ColorScheme", {
	callback = save_colorscheme,
})

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

			-- Load saved colorscheme or default
			load_colorscheme()
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
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_transparent_background = true
			vim.g.gruvbox_material_background = "hard"
		end,
	},
	{
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		lazy = false,
		config = function()
			require("github-theme").setup({
				options = { transparent = true },
			})
		end,
	},
}

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

	vim.cmd("colorscheme rose-pine-main")
end

local function save_colorscheme()
	local data_path = vim.fn.stdpath("data")
	local colorscheme_file = data_path .. "/colorscheme.txt"
	local current_colorscheme = vim.g.colors_name
	if current_colorscheme then
		vim.fn.writefile({ current_colorscheme }, colorscheme_file)
	end
end

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

			load_colorscheme()
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

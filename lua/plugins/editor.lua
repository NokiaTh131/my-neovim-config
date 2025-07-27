return {
	{
		"A7Lavinraj/fyler.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = { -- check the default options in the README.md
			icon_provider = "nvim-web-devicons",
			default_explorer = true,
			views = {
				confirm = {
					width = 0.5,
					height = 0.3,
				},
				explorer = {
					width = 0.6,
					height = 0.8,
				},
			},
		},
		keys = {
			{ "<leader>e", "<cmd>Fyler<cr>", desc = "Fyler" },
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics", "filename" },
					lualine_c = {},
					lualine_x = {},
					lualine_y = {
						"filetype",
						{
							"lsp_status",
							icon = "", -- f013
							symbols = {
								-- Standard unicode symbols to cycle through for LSP progress:
								spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
								-- Standard unicode symbol for when LSP is done:
								done = "✓",
								-- Delimiter inserted between LSP names:
								separator = " ",
							},
							-- List of LSP names to ignore (e.g., `null-ls`):
							ignore_lsp = {},
						},
						"progress",
					},
					lualine_z = {
						"location",
					},
				},
				inactive_sections = {
					lualine_a = { "filename" },
					lualine_b = {},
					lualine_c = {},
					lualine_x = {},
					lualine_y = {},
					lualine_z = { "location" },
				},
			})
		end,
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		event = "ColorScheme",
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers",
					separator_style = "thin",
					diagnostics = "nvim_lsp",
					offsets = {
						{
							filetype = "oil",
							text = "File Explorer",
							highlight = "Directory",
							separator = true,
						},
					},
				},
				highlights = require("rose-pine.plugins.bufferline"),
			})
			vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Switch to next buffer" })
			vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Switch to previous buffer" })
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
}

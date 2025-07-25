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
					width = 0.2,
					height = 0.2,
					kind = "split:leftmost",
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

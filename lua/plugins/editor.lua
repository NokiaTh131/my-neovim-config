return {
	{
		"stevearc/oil.nvim",
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		lazy = false,
		config = function()
			function _G.get_oil_winbar()
				local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
				local dir = require("oil").get_current_dir(bufnr)
				if dir then
					return vim.fn.fnamemodify(dir, ":~")
				else
					-- If there is no current directory (e.g. over ssh), just show the buffer name
					return vim.api.nvim_buf_get_name(0)
				end
			end
			require("oil").setup({
				keymaps = {
					["<C-h>"] = false,
					["<C-l>"] = false,
					["<C-k>"] = false,
					["<C-j>"] = false,
				},
				win_options = {
					winbar = "%!v:lua.get_oil_winbar()",
				},
				view_options = { show_hidden = true },
				vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "echasnovski/mini.icons", version = false },
		config = function()
			require("lualine").setup({
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics", "filename" },
					lualine_c = {},
					lualine_x = {},
					lualine_y = {
						"filetype",
						"lsp_status",
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
		dependencies = { "echasnovski/mini.icons", version = false },
		event = "VeryLazy",
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

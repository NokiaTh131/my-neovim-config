return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"go",
					"rust",
					"lua",
					"luadoc",
					"luap",
					"python",
					"vim",
					"vimdoc",
					"query",
					"html",
					"css",
					"scss",
					"javascript",
					"typescript",
					"tsx",
					"json",
					"yaml",
					"toml",
					"vue",
					"svelte",
					"astro",
					"markdown",
					"markdown_inline",
				},
				auto_install = true,
				sync_install = false,
				modules = {},
				ignore_install = {},
				highlight = {
					enable = true,
				},
				indent = { enable = true },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-space>",
						node_incremental = "<C-space>",
						scope_incremental = false,
						node_decremental = "<bs>",
					},
				},
			})
		end,
	},
}

return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
			local wk = require("which-key")

			wk.setup({
				preset = "helix",
				delay = 0,
				expand = 1,
				notify = true,
				triggers = {
					{ "<leader>", mode = { "n", "v" } },
					{ "<c-w>", mode = { "n" } },
				},
				spec = {
					{ "<leader>f", group = "Find" },
					{ "<leader>g", group = "Git" },
					{ "<leader>c", group = "Code" },
					{ "<leader>b", group = "Buffer" },
					{ "<leader>x", group = "Quickfix" },
					{ "<leader><tab>", group = "Tab" },
					{ "<leader>h", group = "Harpoon" },
					{ "<leader>t", group = "Test" },
					{ "<leader>tn", desc = "Run nearest test" },
					{ "<leader>tf", desc = "Run file tests" },
					{ "<leader>td", desc = "Debug test" },
					{ "<leader>ts", desc = "Stop test" },
					{ "<leader>to", desc = "Open test output" },
					{ "<leader>tO", desc = "Toggle output panel" },
					{ "<leader>tt", desc = "Toggle test summary" },
					{ "<leader>tw", desc = "Watch tests" },
					{ "<leader>tW", desc = "Watch file tests" },
					{ "<leader>a", desc = "Add to Harpoon" },
				},
			})
		end,
	},
}

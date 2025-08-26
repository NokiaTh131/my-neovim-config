return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")

			harpoon:setup()
			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			vim.keymap.set("n", "<C-t>", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<C-y>", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<A-t>", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<A-y>", function()
				harpoon:list():select(4)
			end)

			vim.keymap.set("n", "<A-N>", function()
				harpoon:list():prev()
			end)
			vim.keymap.set("n", "<A-n>", function()
				harpoon:list():next()
			end)
		end,
	},
}

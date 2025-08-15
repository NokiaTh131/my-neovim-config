return {
	{
		"tpope/vim-fugitive",
		config = function()
			-- Key mappings for vim-fugitive
			vim.keymap.set("n", "<leader>gg", "<cmd>Git<CR>", { desc = "Git status" })
			vim.keymap.set("n", "<leader>gd", "<cmd>Gvdiffsplit<CR>", { desc = "Git diff" })
			vim.keymap.set("n", "<leader>gf", "<cmd>Git fetch<CR>", { desc = "Git fetch" })
			vim.keymap.set("n", "<leader>gr", "<cmd>gread<cr>", { desc = "git checkout current file" })
			vim.keymap.set("n", "<leader>gC", "<cmd>Git commit<CR>", { desc = "Git commit" })
			vim.keymap.set("n", "<leader>gl", "<cmd>Git log --oneline<CR>", { desc = "Git log" })
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()

			vim.keymap.set("n", "<leader>hp", "<cmd>Gitsigns preview_hunk_inline<CR>", { desc = "Preview hunk" })
			vim.keymap.set("n", "<leader>hbl", "<cmd>Gitsigns blame_line<CR>", { desc = "Blame line" })
			vim.keymap.set("n", "<leader>hbb", "<cmd>Gitsigns blame<CR>", { desc = "Blame" })
			vim.keymap.set("n", "<leader>hs", "<cmd>Gitsigns stage_hunk<CR>", { desc = "Stage hunk" })
			vim.keymap.set("n", "<leader>hu", "<cmd>Gitsigns undo_stage_hunk<CR>", { desc = "Undo stage hunk" })
			vim.keymap.set("n", "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Reset hunk" })
			vim.keymap.set("n", "<leader>hR", "<cmd>Gitsigns reset_buffer<CR>", { desc = "Reset buffer" })
			vim.keymap.set("n", "<leader>hS", "<cmd>Gitsigns stage_buffer<CR>", { desc = "Stage buffer" })
		end,
	},
}

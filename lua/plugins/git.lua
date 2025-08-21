return {
	{
		"tpope/vim-fugitive",
		config = function()
			-- Key mappings for vim-fugitive
			vim.keymap.set("n", "<leader>gg", "<cmd>Git<CR>", { desc = "Git status" })
			vim.keymap.set("n", "<leader>gd", "<cmd>Gvdiffsplit<CR>", { desc = "Git diff" })
			vim.keymap.set("n", "<leader>gr", "<cmd>Gread<cr>", { desc = "Git checkout current file" })
			vim.keymap.set("n", "<leader>gl", "<cmd>Git log --oneline<CR>", { desc = "Git log" })
			vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>", { desc = "Diff get Local" })
			vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>", { desc = "Diff get Remote" })
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
			vim.keymap.set("n", "<leader>hn", "<cmd>Gitsigns next_hunk<CR>", { desc = "Next hunk" })
			vim.keymap.set("n", "<leader>hN", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Prev hunk" })
		end,
	},
}

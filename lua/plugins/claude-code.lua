return {
	{
		"coder/claudecode.nvim",
		dependencies = { "folke/snacks.nvim" },
		config = true,
		opts = {
			terminal = {
				split_side = "right",
				split_width_percentage = 0.30,
				provider = "snacks",
				auto_close = true,
			},
		},
		keys = {
			{ "<leader>p", nil, desc = "AI/Claude Code" },
			{ "<c-p>", "<cmd>ClaudeCode<cr>", mode = { "n", "t" }, desc = "Toggle Claude" },
			{ "<leader>pf", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
			{ "<leader>pr", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
			{ "<leader>pC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
			{ "<leader>pb", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
			{ "<leader>ps", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
			{
				"<leader>ps",
				"<cmd>ClaudeCodeTreeAdd<cr>",
				desc = "Add file",
				ft = { "NvimTree", "neo-tree", "oil" },
			},
			-- Diff management
			{ "<leader>pa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
			{ "<leader>pd", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
		},
	},
}

return {
	"bassamsdata/namu.nvim",
	opts = {
		global = {},
		namu_symbols = { -- Specific Module options
			options = {},
		},
	},
	-- === Suggested Keymaps: ===
	vim.keymap.set("n", "<leader>ss", ":Namu symbols<cr>", {
		desc = "Jump to LSP symbol",
		silent = true,
	}),
}

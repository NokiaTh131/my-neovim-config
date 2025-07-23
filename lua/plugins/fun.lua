return {
	{
		"nvim-lua/plenary.nvim",
		name = "plenary",
	},
	"eandrju/cellular-automaton.nvim",

	vim.keymap.set("n", "<leader>sf", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it rain" }),
	vim.keymap.set("n", "<leader>sv", "<cmd>CellularAutomaton game_of_life<CR>", { desc = "Game of life" }),
	vim.keymap.set("n", "<leader>sl", "<cmd>CellularAutomaton scramble<CR>", { desc = "Scramble" }),
}

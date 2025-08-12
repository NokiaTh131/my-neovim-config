return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		lazy = true,
		ft = "markdown",
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" }, -- if you use standalone mini plugins
		opts = {
			completions = { blink = { enabled = true } },
		},
	},
}

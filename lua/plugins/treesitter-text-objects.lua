return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	lazy = true,
	config = function()
		require("nvim-treesitter.configs").setup({
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["aj"] = { query = "@assignment.lhs", desc = "Select left-hand side of assignment" },
						["ij"] = { query = "@assignment.rhs", desc = "Select right-hand side of assignment" },

						["aa"] = { query = "@parameter.outer", desc = "Select outer part of parameter" },
						["ia"] = { query = "@parameter.inner", desc = "Select inner part of parameter" },

						["ai"] = { query = "@conditional.outer", desc = "Select outer part of conditional" },
						["ii"] = { query = "@conditional.inner", desc = "Select inner part of conditional" },

						["al"] = { query = "@loop.outer", desc = "Select outer part of loop" },
						["il"] = { query = "@loop.inner", desc = "Select inner part of loop" },

						["af"] = { query = "@function.outer", desc = "Select outer part of function" },
						["if"] = { query = "@function.inner", desc = "Select inner part of function" },

						["am"] = { query = "@call.outer", desc = "Select outer part of call" },
						["im"] = { query = "@call.inner", desc = "Select inner part of call" },

						["ac"] = { query = "@class.outer", desc = "Select outer part of class" },
						["ic"] = { query = "@class.inner", desc = "Select inner part of class" },
					},
				},
				swap = {
					enable = true,
					swap_next = {
						["<leader>na"] = "@parameter.inner",
						["<leader>nm"] = "@function.outer",
					},
					swap_previous = {
						["<leader>pa"] = "@parameter.inner",
						["<leader>pm"] = "@function.outer",
					},
				},
			},
		})
	end,
}

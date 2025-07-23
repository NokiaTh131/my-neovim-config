return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		-- Language adapters
		"fredrikaverpil/neotest-golang",
		"nvim-neotest/neotest-jest",
		"nvim-neotest/neotest-plenary",
		"leoluz/nvim-dap-go",
	},
	config = function()
		local neotest = require("neotest")

		neotest.setup({
			adapters = {
				require("neotest-golang")({
					dap = { justMyCode = false },
				}),
				require("rustaceanvim.neotest"),
				require("neotest-jest")({
					jestCommand = "npm test --",
					jestConfigFile = "jest.config.js",
					env = { CI = true },
					cwd = function()
						return vim.fn.getcwd()
					end,
				}),
				require("neotest-plenary"),
			},
		})

		-- Keymaps
		local opts = { noremap = true, silent = true }

		-- Test running
		vim.keymap.set("n", "<leader>tn", function()
			neotest.run.run()
		end, opts)
		vim.keymap.set("n", "<leader>tf", function()
			neotest.run.run(vim.fn.expand("%"))
		end, opts)
		vim.keymap.set("n", "<leader>td", function()
			neotest.run.run({ strategy = "dap" })
		end, opts)
		vim.keymap.set("n", "<leader>ts", function()
			neotest.run.stop()
		end, opts)

		-- Test navigation
		vim.keymap.set("n", "<leader>to", function()
			neotest.output.open({ enter = true, auto_close = true })
		end, opts)
		vim.keymap.set("n", "<leader>tO", function()
			neotest.output_panel.toggle()
		end, opts)
		vim.keymap.set("n", "<leader>tt", function()
			neotest.summary.toggle()
		end, opts)

		-- Test watching
		vim.keymap.set("n", "<leader>tw", function()
			neotest.watch.toggle()
		end, opts)
		vim.keymap.set("n", "<leader>tW", function()
			neotest.watch.toggle(vim.fn.expand("%"))
		end, opts)
	end,
}

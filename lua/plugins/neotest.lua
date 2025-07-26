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
	cmd = {
		"Neotest",
	},
	keys = {
		{
			"<leader>tn",
			function()
				require("neotest").run.run()
			end,
			desc = "Run nearest test",
		},
		{
			"<leader>tf",
			function()
				require("neotest").run.run(vim.fn.expand("%"))
			end,
			desc = "Run test file",
		},
		{
			"<leader>td",
			function()
				require("neotest").run.run({ strategy = "dap" })
			end,
			desc = "Debug test",
		},
		{
			"<leader>ts",
			function()
				require("neotest").run.stop()
			end,
			desc = "Stop test",
		},
		-- Test navigation
		{
			"<leader>to",
			function()
				require("neotest").output.open({ enter = true, auto_close = true })
			end,
			desc = "Test output",
		},
		{
			"<leader>tO",
			function()
				require("neotest").output_panel.toggle()
			end,
			desc = "Toggle output panel",
		},
		{
			"<leader>tt",
			function()
				require("neotest").summary.toggle()
			end,
			desc = "Toggle test summary",
		},
		-- Test watching
		{
			"<leader>tw",
			function()
				require("neotest").watch.toggle()
			end,
			desc = "Toggle test watch",
		},
		{
			"<leader>tW",
			function()
				require("neotest").watch.toggle(vim.fn.expand("%"))
			end,
			desc = "Toggle watch file",
		},
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
	end,
}

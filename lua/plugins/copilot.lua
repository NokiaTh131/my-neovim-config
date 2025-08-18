return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "main",
		cmd = "CopilotChat",
		opts = function()
			local user = "User"
			user = user:sub(1, 1):upper() .. user:sub(2)
			return {
				auto_insert_mode = false,
				model = "gpt-5-mini",
				question_header = "  " .. user .. " ",
				answer_header = "  Copilot ",
				window = {
					width = 0.4,
				},
			}
		end,
		keys = {
			{ "<leader>z", "", desc = "Copilot Actions Menu", mode = { "n", "v" } },
			{
				"<c-n>",
				function()
					return require("CopilotChat").toggle()
				end,
				desc = "Toggle (CopilotChat)",
				mode = { "n", "v" },
			},
			{
				"<leader>za",
				function()
					return require("CopilotChat").select_model()
				end,
				desc = "Model Selection (CopilotChat)",
				mode = { "n", "v" },
			},
			{
				"<leader>zx",
				function()
					return require("CopilotChat").reset()
				end,
				desc = "Clear (CopilotChat)",
				mode = { "n", "v" },
			},
			{
				"<leader>zq",
				function()
					vim.ui.input({
						prompt = "Quick Chat: ",
					}, function(input)
						if input ~= "" then
							require("CopilotChat").ask(input)
						end
					end)
				end,
				desc = "Quick Chat (CopilotChat)",
				mode = { "n", "v" },
			},
			{
				"<leader>zp",
				function()
					require("CopilotChat").select_prompt()
				end,
				desc = "Prompt Actions (CopilotChat)",
				mode = { "n", "v" },
			},
		},
		config = function(_, opts)
			local chat = require("CopilotChat")

			vim.api.nvim_create_autocmd("BufEnter", {
				pattern = "copilot-chat",
				callback = function()
					vim.opt_local.relativenumber = false
					vim.opt_local.number = false
					pcall(vim.keymap.del, "i", "<C-c>", { buffer = 0 })
				end,
			})

			chat.setup(opts)
		end,
	},
}

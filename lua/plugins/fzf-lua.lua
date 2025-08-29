return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "echasnovski/mini.icons" },
    --stylua: ignore
		keys = {
			{"<leader>ff", function() require("fzf-lua").files() end, desc = "Find files",},
			{"<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Live Grep",},
			{"<leader>fb", function() require("fzf-lua").buffers() end, desc = "Find Buffers",},
			{"<leader>fc", function() require("fzf-lua").colorschemes() end, desc = "Select Colorscheme",},
			{"<leader>ld", function() require("fzf-lua").lsp_definitions() end, desc = "LSP Definitions",},
			{"<leader>lr", function() require("fzf-lua").lsp_references() end, desc = "LSP References",},
			{"<leader>ls", function() require("fzf-lua").lsp_document_symbols() end, desc = "LSP Document Symbols",},
			{"<leader>lD", function() require("fzf-lua").lsp_workspace_diagnostics() end, desc = "LSP Diagnostics",},
		},
		opts = {},
		config = function()
			require("fzf-lua").register_ui_select()
		end,
	},
}

return {
	{
		"b0o/schemastore.nvim",
		lazy = true,
	},
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"gopls",
				"lua_ls",
				"rust_analyzer",
				"html",
				"cssls",
				"tailwindcss",
				"emmet_ls",
				"jsonls",
				"dockerls",
				"ts_ls",
			},
			automatic_enable = {
				exclude = {
					"rust_analyzer",
					"ts_ls",
				},
			},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},

	{
		"jay-babu/mason-nvim-dap.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"mfussenegger/nvim-dap",
		},
		ft = { "go", "rust", "javascript", "typescript" },
		opts = {
			ensure_installed = {
				"delve",
				"codelldb",
			},
			automatic_installation = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"saghen/blink.cmp",
		},
		ft = {
			"lua",
			"go",
			"html",
			"css",
			"json",
			"dockerfile",
		},
		config = function()
			-- Configure diagnostic display
			vim.diagnostic.config({
				virtual_text = false,
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = "󰅚",
						[vim.diagnostic.severity.WARN] = "󰀪",
						[vim.diagnostic.severity.HINT] = "󰌶",
						[vim.diagnostic.severity.INFO] = "󰋽",
					},
				},
				underline = true,
				update_in_insert = false,
				severity_sort = true,
			})

			local virtual_text_config = {
				spacing = 2,
				prefix = "●",
			}

			local group = vim.api.nvim_create_augroup("DiagnosticVirtualText", { clear = true })

			-- Show virtual text when entering normal mode
			vim.api.nvim_create_autocmd("ModeChanged", {
				group = group,
				pattern = "*:n",
				callback = function()
					vim.diagnostic.config({ virtual_text = virtual_text_config })
				end,
			})

			-- Hide virtual text when leaving normal mode
			vim.api.nvim_create_autocmd("ModeChanged", {
				group = group,
				pattern = "n:*",
				callback = function()
					vim.diagnostic.config({ virtual_text = false })
				end,
			})

			-- Also show virtual text when first entering a buffer in normal mode
			vim.api.nvim_create_autocmd("BufEnter", {
				group = group,
				callback = function()
					if vim.fn.mode() == "n" then
						vim.diagnostic.config({ virtual_text = virtual_text_config })
					end
				end,
			})

			vim.lsp.config["lua_ls"] = {
				settings = {
					Lua = {
						format = {
							enable = true,
							defaultConfig = {
								indent_style = "space",
								indent_size = "2",
							},
						},
					},
				},
			}

			vim.lsp.config["jsonls"] = {
				settings = {
					json = {
						schemas = require("schemastore").json.schemas(),
						validate = { enable = true },
					},
				},
			}

			vim.lsp.config("emmet_ls", {
				filetypes = {
					"html",
					"typescriptreact",
					"javascriptreact",
					"css",
					"sass",
					"scss",
				},
				init_options = {
					html = {
						options = {
							["bem.enabled"] = true,
						},
					},
				},
			})
		end,
	},
}

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
				"html",
				"cssls",
				"tailwindcss",
				"emmet_ls",
				"jsonls",
				"dockerls",
				"ts_ls",
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
		opts = {
			ensure_installed = {
				"delve",
				"codelldb",
				"debugpy",
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

			vim.lsp.config["ts_ls"] = {
				filetypes = { "javascript", "javascriptreact" },
			}

			vim.lsp.config("emmet_ls", {
				filetypes = {
					"html",
					"typescriptreact",
					"javascriptreact",
					"css",
					"sass",
					"scss",
					"less",
					"vue",
					"svelte",
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

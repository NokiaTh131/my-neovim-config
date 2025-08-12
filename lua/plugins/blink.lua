return {
	{
		"saghen/blink.cmp",
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
		version = "v1.*",
		opts = {
			keymap = {
				preset = "none",
				["<CR>"] = { "select_and_accept", "fallback" },
				["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
				["<C-e>"] = { "hide" },
				["<C-y>"] = { "select_and_accept" },

				["<Up>"] = { "select_prev", "fallback" },
				["<Down>"] = { "select_next", "fallback" },
				["<C-p>"] = { "select_prev", "fallback_to_mappings" },
				["<C-n>"] = { "select_next", "fallback_to_mappings" },

				["<C-b>"] = { "scroll_documentation_up", "fallback" },
				["<C-f>"] = { "scroll_documentation_down", "fallback" },

				["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
			},

			sources = {
				default = { "lazydev", "lsp", "path", "snippets", "buffer" },
				providers = {
					lazydev = {
						name = "LazyDev",
						module = "lazydev.integrations.blink",
						-- make lazydev completions top priority (see `:h blink.cmp`)
						score_offset = 100,
					},
				},
			},

			completion = {
				ghost_text = { enabled = false },
				menu = {
					border = "rounded",
					draw = {
						components = {
							kind_icon = {
								text = function(ctx)
									local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
									return kind_icon
								end,
								highlight = function(ctx)
									local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
									return hl
								end,
							},
							kind = {
								highlight = function(ctx)
									local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
									return hl
								end,
							},
						},
					},
				},
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 500,
					window = { border = "rounded" },
				},
			},

			cmdline = {
				keymap = { preset = "default" },
				completion = { menu = { auto_show = true } },
			},

			appearance = {
				nerd_font_variant = "mono",
			},

			signature = {
				enabled = true,
				window = { border = "rounded" },
			},

			fuzzy = { implementation = "rust" },
		},
		opts_extend = { "sources.default" },
	},
}

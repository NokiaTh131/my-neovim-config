return {
	{
		"saghen/blink.cmp",
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
		version = "v1.*",
		opts = {
			keymap = {
				preset = "default",
				["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
				["<C-e>"] = { "hide" },
				["<C-y>"] = { "select_and_accept" },

				["<Up>"] = { "select_prev", "fallback" },
				["<Down>"] = { "select_next", "fallback" },
				["<C-p>"] = { "select_prev", "fallback_to_mappings" },
				["<C-n>"] = { "select_next", "fallback_to_mappings" },

				["<C-b>"] = { "scroll_documentation_up", "fallback" },
				["<C-f>"] = { "scroll_documentation_down", "fallback" },

				["<Tab>"] = { "snippet_forward", "fallback" },
				["<S-Tab>"] = { "snippet_backward", "fallback" },

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
				menu = { border = "rounded" },
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

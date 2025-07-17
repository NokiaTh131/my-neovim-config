return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets"
    },
    version = "v1.*",
    opts = {
      keymap = {
        preset = "default",
        ['<C-p>'] = { 'select_prev', 'fallback' },
        ['<C-i>'] = { 'select_next', 'fallback' },
        ['<CR>'] = { 'select_and_accept', 'fallback' },

      },

      sources = {
        default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
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
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        }
      },

      cmdline = {
        keymap = { preset = 'default' },
        completion = { menu = { auto_show = true } },
      },

      appearance = {
        nerd_font_variant = 'mono'
      },

      signature = { enabled = true },

      fuzzy = { implementation = "rust" }
    },
    opts_extend = { "sources.default" }
  }
}

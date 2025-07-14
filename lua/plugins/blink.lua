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
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },

      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        }
      },

      appearance = {
        nerd_font_variant = 'mono'
      },

      signature = { enabled = true },


    },
    opts_extend = { "sources.default" }
  }
}

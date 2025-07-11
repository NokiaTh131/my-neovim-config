return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets"
    },
    version = "v0.*",
    opts = {
      keymap = {
        preset = "default",
        ['<C-q>'] = { 'select_prev', 'fallback' },
        ['<C-]>'] = { 'select_next', 'fallback' },
        ['<CR>'] = { 'select_and_accept', 'fallback' },

      },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
      },

      signature = {
        enabled = true
      }
    }
  }
}

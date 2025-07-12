return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "auto",
        dark_variant = "main",
        bold_vert_split = false,
        dim_nc_background = false,
        disable_background = true,
        disable_float_background = true,
        disable_italics = false,
        groups = {
          background = "base",
          background_nc = "_experimental_nc",
          panel = "surface",
          panel_nc = "base",
          border = "highlight_med",
          comment = "muted",
          link = "iris",
          punctuation = "subtle",
          error = "love",
          hint = "iris",
          info = "foam",
          warn = "gold",
          headings = {
            h1 = "iris",
            h2 = "foam",
            h3 = "rose",
            h4 = "gold",
            h5 = "pine",
            h6 = "foam",
          }
        },
        highlight_groups = {
          ColorColumn = { bg = "none" },
          CursorLine = { bg = "none" },
        }
      })
      vim.cmd("colorscheme rose-pine")

      -- Make everything transparent except completion popups
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      --
      -- LSP/Completion popup backgrounds (keep visible)
      vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1f1d2e" })
    end,
  },
}

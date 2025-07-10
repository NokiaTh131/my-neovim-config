return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true,
        dimInactive = false,
        terminalColors = true,
        colors = {
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors)
          return {}
        end,
        theme = "wave",
        background = {
          dark = "wave",
          light = "lotus"
        },
      })
      vim.cmd([[colorscheme kanagawa]])
      
      -- Make everything transparent
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
      vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
      vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
      vim.api.nvim_set_hl(0, "TabLine", { bg = "none" })
      vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })
      vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none" })
      vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
      vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
      vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
    end,
  },
}

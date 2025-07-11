return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")

      wk.setup({
        preset = "helix",
        delay = 0,
        expand = 1,
        notify = true,
        triggers = {
          { "<leader>", mode = { "n", "v" } },
          { "<c-w>",    mode = { "n" } },
        },
        spec = {
          { "<leader>f",     group = "Find" },
          { "<leader>g",     group = "Git" },
          { "<leader>c",     group = "Code" },
          { "<leader>b",     group = "Buffer" },
          { "<leader>x",     group = "Quickfix" },
          { "<leader><tab>", group = "Tab" },
          { "<leader>h",     group = "Harpoon" },
        },
      })
    end,
  },
}

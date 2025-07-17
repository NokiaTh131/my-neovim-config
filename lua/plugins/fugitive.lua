return {
  {
    "tpope/vim-fugitive",
    config = function()
      -- Key mappings for vim-fugitive
      vim.keymap.set("n", "<leader>gg", "<cmd>Git<CR>", { desc = "Git status" })
      vim.keymap.set("n", "<leader>gd", "<cmd>Gvdiffsplit<CR>", { desc = "Git diff" })
      vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<CR>", { desc = "Git blame" })
      vim.keymap.set("n", "<leader>gp", "<cmd>Git push<CR>", { desc = "Git push" })
      vim.keymap.set("n", "<leader>gP", "<cmd>Git pull<CR>", { desc = "Git pull" })
      vim.keymap.set("n", "<leader>gf", "<cmd>Git fetch<CR>", { desc = "Git fetch" })
      vim.keymap.set("n", "<leader>gw", "<cmd>Gwrite<CR>", { desc = "Git add current file" })
      vim.keymap.set("n", "<leader>gr", "<cmd>Gread<CR>", { desc = "Git checkout current file" })
      vim.keymap.set("n", "<leader>gC", "<cmd>Git commit<CR>", { desc = "Git commit" })
      vim.keymap.set("n", "<leader>gS", "<cmd>Git stash<CR>", { desc = "Git stash" })
      vim.keymap.set("n", "<leader>gU", "<cmd>Git stash pop<CR>", { desc = "Git stash pop" })
      vim.keymap.set("n", "<leader>gh", "<cmd>Git log --oneline<CR>", { desc = "Git log" })
    end,
  },
}


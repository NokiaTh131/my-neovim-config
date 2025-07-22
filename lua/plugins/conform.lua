return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>fd",
        function()
          require("conform").format({ async = true, lsp_fallback = true })
        end,
        mode = "",
        desc = "Format buffer",
      },
    },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        rust = { "rustfmt" },
        go = { "goimports", "gofmt" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        css = { { "prettierd", "prettier", stop_after_first = true } },
        scss = { { "prettierd", "prettier", stop_after_first = true } },
        yaml = { "yamlfix" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },

  },
}

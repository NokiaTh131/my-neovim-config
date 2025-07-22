return {
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "svelte", "vue", "tsx", "jsx",
      "xml", "php", "markdown", "astro", "handlebars", "hbs"
    },
    config = function()
      require("nvim-ts-autotag").setup({
        opts = {
          enable_close = true,
          enable_rename = true,
          enable_close_on_slash = false
        }
      })
    end,
  },
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = { -- set to setup table
    },
  },
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "scss", "javascript", "typescript", "javascriptreact", "typescriptreact", "vue", "svelte" },
    config = function()
      vim.g.user_emmet_settings = {
        javascript = {
          extends = 'jsx',
        },
        typescript = {
          extends = 'tsx',
        },
        vue = {
          extends = 'html',
        },
        svelte = {
          extends = 'html',
        },
      }
    end,
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    ft = { "javascript", "typescript", "javascriptreact", "typescriptreact", "vue", "svelte" },
    config = function()
      require("ts_context_commentstring").setup({
        enable_autocmd = false,
        languages = {
          javascript = {
            __default = "// %s",
            jsx_element = "{/* %s */}",
            jsx_fragment = "{/* %s */}",
            jsx_attribute = "// %s",
            comment = "// %s"
          },
          typescript = {
            __default = "// %s",
            tsx_element = "{/* %s */}",
            tsx_fragment = "{/* %s */}",
            tsx_attribute = "// %s",
            comment = "// %s"
          }
        }
      })
    end,
  },
  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      signs = false,
      keywords = {
        FIX = {
          icon = " ",
          color = "error",
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }
        },
        TODO = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      }
    }
  },
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    {
      "NvChad/nvim-colorizer.lua",
      dependencies = { "nvim-treesitter/nvim-treesitter" },
      opts = {},
      config = function()
        local nvchadcolorizer = require("colorizer")
        local tailwindcolorizer = require("tailwindcss-colorizer-cmp")

        nvchadcolorizer.setup({
          user_default_options = {
            tailwind = true,
          },
          filetypes = { "html", "css", "javascript", "typescript", "jsx", "tsx", "vue", "svelte" },
        })

        tailwindcolorizer.setup({
          color_square_width = 2,
        })

        vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
          callback = function()
            vim.cmd("ColorizerAttachToBuffer")
          end,
        })
      end,
    },
  }
}

return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    }
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "gopls", "rust_analyzer", "lua_ls", "pyright" },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "saghen/blink.cmp",
    },
    config = function()
      -- Configure diagnostic display
      vim.diagnostic.config({
        virtual_text = false,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "󰅚",
            [vim.diagnostic.severity.WARN] = "󰀪",
            [vim.diagnostic.severity.HINT] = "󰌶",
            [vim.diagnostic.severity.INFO] = "󰋽",
          },
        },
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })

      local virtual_text_config = {
        spacing = 2,
        prefix = "●",
      }

      local group = vim.api.nvim_create_augroup("DiagnosticVirtualText", { clear = true })

      -- Show virtual text when entering normal mode
      vim.api.nvim_create_autocmd("ModeChanged", {
        group = group,
        pattern = "*:n",
        callback = function()
          vim.diagnostic.config({ virtual_text = virtual_text_config })
        end,
      })

      -- Hide virtual text when leaving normal mode
      vim.api.nvim_create_autocmd("ModeChanged", {
        group = group,
        pattern = "n:*",
        callback = function()
          vim.diagnostic.config({ virtual_text = false })
        end,
      })

      -- Also show virtual text when first entering a buffer in normal mode
      vim.api.nvim_create_autocmd("BufEnter", {
        group = group,
        callback = function()
          if vim.fn.mode() == "n" then
            vim.diagnostic.config({ virtual_text = virtual_text_config })
          end
        end,
      })

      vim.lsp.config('rust_analyzer', {
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
            },
            check = {
              command = "clippy",
            },
            diagnostics = {
              enable = true,
              experimental = {
                enable = true,
              },
            },
            procMacro = {
              enable = true,
            },
          },
        },
      })

      vim.lsp.config('gopls', {
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
              nilness = true,
              shadow = true,
              buildtag = true,
              printf = true,
              unreachable = true,
              unusedwrite = true,
              useany = true,
              fillreturns = true,
              nonewvars = true,
              undeclaredname = true,
              unusedvariable = true,
            },
            codelenses = {
              gc_details = false,
              generate = true,
              regenerate_cgo = true,
              run_govulncheck = true,
              test = true,
              tidy = true,
              upgrade_dependency = true,
              vendor = true,
            },
            hints = {
              assignVariableTypes = true,
              compositeLiteralFields = true,
              compositeLiteralTypes = true,
              constantValues = true,
              functionTypeParameters = true,
              parameterNames = true,
              rangeVariableTypes = true,
            },
            buildFlags = { "-tags", "integration" },
            completeUnimported = true,
            usePlaceholders = true,
            matcher = "Fuzzy",
            experimentalPostfixCompletions = true,
            gofumpt = true,
            staticcheck = true,
            semanticTokens = true,
            vulncheck = "Imports",
          },
        },
      })

      vim.lsp.config['luals'] = {
        cmd = { 'lua-language-server' },
        filetypes = { 'lua' },
        root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT',
            }
          }
        }
      }

      vim.lsp.config('pyright', {
        settings = {
          python = {
            analysis = {
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "workspace",
            },
          },
        },
      })
    end,
  },
}

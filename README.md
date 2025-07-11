# Neovim Configuration

A modern, transparent Neovim configuration with essential plugins for development.

> **Note**: This README is auto-generated. Keybinding documentation is automatically updated to reflect the current configuration.
<img width="1919" height="992" alt="image" src="https://github.com/user-attachments/assets/fcae8fdd-ebb6-4209-a1ba-ecaa6921198f" />

## Requirements

- **Neovim 0.11.2+**
- **Git**
- **Node.js** (for some language servers)
- **Go** (for gopls)
- **Rust** (for rust-analyzer)
- **ripgrep** (for telescope live grep)

## Installation

1. **Backup existing config:**
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Clone this config:**
   ```bash
   git clone https://github.com/NokiaTh131/my-neovim-config.git ~/.config/nvim
   ```

3. **Start Neovim:**
   ```bash
   nvim
   ```
   
   Lazy.nvim will automatically install all plugins.

## Plugins

### Package Manager
- **lazy.nvim** - Modern plugin manager

### Colorscheme & UI
- **neanias/everforest-nvim** - Beautiful nature-inspired colorscheme with transparency
- **nvim-lualine/lualine.nvim** - Statusline
- **akinsho/bufferline.nvim** - Buffer tabs
- **nvim-tree/nvim-web-devicons** - File icons
- **folke/snacks.nvim** - Collection of QoL plugins (dashboard, notifications, zen mode, etc.)

### File Management & Navigation
- **nvim-telescope/telescope.nvim** - Fuzzy finder
- **nvim-neo-tree/neo-tree.nvim** - File explorer
- **ThePrimeagen/harpoon** (branch: harpoon2) - Quick file navigation

### LSP & Completion
- **williamboman/mason.nvim** - LSP server manager
- **williamboman/mason-lspconfig.nvim** - Bridge between Mason and lspconfig
- **neovim/nvim-lspconfig** - LSP configuration
- **saghen/blink.cmp** - Fast completion engine (Rust-based)
- **rafamadriz/friendly-snippets** - Collection of snippets

### Syntax & Parsing
- **nvim-treesitter/nvim-treesitter** - Syntax highlighting

### Git Integration
- **lewis6991/gitsigns.nvim** - Git signs in gutter

### Code Enhancement
- **windwp/nvim-autopairs** - Auto close brackets
- **numToStr/Comment.nvim** - Smart commenting
- **folke/which-key.nvim** - Keybinding hints
- **stevearc/conform.nvim** - Code formatting with multiple formatters
- **folke/trouble.nvim** - Diagnostics and quickfix list

### AI Assistance
- **supermaven-inc/supermaven-nvim** - AI code completion

## Keybindings

### Leader Key
- **Leader**: `Space`

### File Operations
| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Help tags |
| `<leader>e` | Toggle file explorer |

### Window Management
| Key | Action |
|-----|--------|
| `<C-h>` | Go to left window |
| `<C-j>` | Go to lower window |
| `<C-k>` | Go to upper window |
| `<C-l>` | Go to right window |
| `<leader>-` | Split window below |
| `<leader>\|` | Split window right |

### Buffer Management
| Key | Action |
|-----|--------|
| `<S-h>` | Previous buffer |
| `<S-l>` | Next buffer |
| `<leader>bb` | Switch to other buffer |
| `<leader>bd` | Delete buffer |

### Tab Management
| Key | Action |
|-----|--------|
| `<leader><tab><tab>` | New tab |
| `<leader><tab>d` | Close tab |
| `<leader><tab>]` | Next tab |
| `<leader><tab>[` | Previous tab |
| `<leader><tab>f` | First tab |
| `<leader><tab>l` | Last tab |

### Harpoon (Quick Navigation)
| Key | Action |
|-----|--------|
| `<leader>a` | Add file to harpoon |
| `<C-e>` | Toggle harpoon menu |
| `<C-t>` | Jump to file 1 |
| `<C-y>` | Jump to file 2 |
| `<C-u>` | Jump to file 3 |
| `<C-i>` | Jump to file 4 |
| `<leader>hp` | Previous harpoon file |
| `<leader>hn` | Next harpoon file |

### LSP (Language Server Protocol)
| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `K` | Hover documentation |
| `gi` | Go to implementation |
| `<C-k>` | Signature help |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions |
| `gr` | Find references |
| `<leader>f` | Format buffer (LSP) |

### Code Formatting (Conform.nvim)
| Key | Action |
|-----|--------|
| `<leader>fd` | Format current buffer |
| `:ConformInfo` | Show formatter info |
| Auto-format | On save (500ms timeout) |

### Diagnostics & Trouble
| Key | Action |
|-----|--------|
| `<leader>cd` | Line diagnostics |
| `]d` | Next diagnostic |
| `[d` | Previous diagnostic |
| `<leader>xl` | Location list |
| `<leader>xq` | Quickfix list |
| `<leader>xx` | Toggle diagnostics (Trouble) |
| `<leader>xX` | Buffer diagnostics (Trouble) |
| `<leader>cs` | Symbols (Trouble) |
| `<leader>cl` | LSP definitions/references (Trouble) |
| `<leader>xL` | Location list (Trouble) |
| `<leader>xQ` | Quickfix list (Trouble) |

### Snacks (QoL Features)
| Key | Action |
|-----|--------|
| `<leader>z` | Toggle Zen Mode |
| `<leader>Z` | Toggle Zoom |
| `<leader>.` | Toggle Scratch Buffer |
| `<leader>S` | Select Scratch Buffer |
| `<leader>n` | Notification History |
| `<leader>N` | Neovim News |
| `<leader>cR` | Rename File |
| `<leader>gB` | Git Blame Line |
| `<leader>gf` | Lazygit Current File History |
| `<leader>gl` | Lazygit Log |
| `<leader>un` | Dismiss All Notifications |
| `<C-/>` | Toggle Terminal |
| `]]` | Next Reference |
| `[[` | Previous Reference |

### Toggle Options (Snacks)
| Key | Action |
|-----|--------|
| `<leader>us` | Toggle Spelling |
| `<leader>uw` | Toggle Wrap |
| `<leader>uL` | Toggle Relative Numbers |
| `<leader>ud` | Toggle Diagnostics |
| `<leader>ul` | Toggle Line Numbers |
| `<leader>uc` | Toggle Conceal Level |
| `<leader>uT` | Toggle Treesitter |
| `<leader>ub` | Toggle Background (dark/light) |
| `<leader>uh` | Toggle Inlay Hints |

### Git
| Key | Action |
|-----|--------|
| `<leader>gg` | Git status |

### Text Manipulation & Clipboard
| Key | Action |
|-----|--------|
| `<leader>y` | Yank to system clipboard |
| `<leader>Y` | Yank line to system clipboard |
| `<leader>d` | Delete to black hole register |
| `<leader>p` | Paste over selection (keep register) |
| `J` | Join lines (preserve cursor) |

### Visual Mode
| Key | Action |
|-----|--------|
| `<` | Decrease indent (keep selection) |
| `>` | Increase indent (keep selection) |
| `J` | Move lines down |
| `K` | Move lines up |

### AI Completion (Supermaven)
| Key | Action |
|-----|--------|
| `<Tab>` | Accept suggestion |
| `<C-j>` | Accept word |

### Completion (Blink.cmp)
| Key | Action |
|-----|--------|
| `<C-[>` | Select previous completion |
| `<C-]>` | Select next completion |
| `<CR>` | Accept completion |

### Navigation & Search
| Key | Action |
|-----|--------|
| `<Esc>` | Clear search highlights |
| `n` | Next search result (centered) |
| `N` | Previous search result (centered) |
| `<C-d>` | Half page down (centered) |
| `<C-u>` | Half page up (centered) |
| `[q` | Previous quickfix item |
| `]q` | Next quickfix item |

### Treesitter (Text Objects)
| Key | Action |
|-----|--------|
| `<C-space>` | Initialize/increment selection |
| `<bs>` | Decrement selection |

## Theme

- **Colorscheme**: Everforest (Nature-inspired)
- **Transparency**: Fully transparent background
- **Icons**: Provided by nvim-web-devicons

## Language Servers

The following language servers are automatically installed via Mason:

- **gopls** - Go language server
- **rust_analyzer** - Rust language server

## Code Formatters

Conform.nvim supports these formatters (install as needed):

### Lua
- **stylua** - `cargo install stylua`

### Python  
- **black** - `pip install black`
- **isort** - `pip install isort`

### Rust
- **rustfmt** - Included with Rust toolchain

### Go
- **gofmt** - Included with Go
- **goimports** - `go install golang.org/x/tools/cmd/goimports@latest`

### JavaScript/TypeScript
- **prettier** - `npm install -g prettier`
- **prettierd** - `npm install -g @fsouza/prettierd` (faster)

### Adding More Language Servers

Edit `lua/plugins/lsp.lua` and add servers to the `ensure_installed` list:

```lua
ensure_installed = { "gopls", "rust_analyzer", "pyright", "tsserver" }
```

## Treesitter Languages

Currently configured for:
- Go
- Rust  
- Lua
- Python
- Vim
- Query

## Directory Structure

```
~/.config/nvim/
├── init.lua                 # Main entry point
├── lua/
│   ├── config/
│   │   ├── lazy.lua         # Lazy.nvim setup
│   │   ├── options.lua      # Neovim options
│   │   └── keymaps.lua      # Global keymaps
│   └── plugins/
│       ├── blink.lua        # Blink.cmp completion
│       ├── colorscheme.lua  # Kanagawa theme
│       ├── conform.lua      # Code formatting
│       ├── editor.lua       # Editor enhancements
│       ├── harpoon.lua      # Harpoon navigation
│       ├── lsp.lua          # LSP configuration
│       ├── snacks.lua       # QoL features collection
│       ├── supermaven.lua   # AI completion
│       ├── telescope.lua    # Fuzzy finder
│       ├── treesitter.lua   # Syntax highlighting
│       ├── trouble.lua      # Diagnostics viewer
│       └── which-key.lua    # Keybinding hints
└── README.md               # This file
```

## Customization

### Changing Theme Colors
Edit `lua/plugins/colorscheme.lua` to modify the Everforest setup.

### Adding Keybindings
Edit `lua/config/keymaps.lua` for global keymaps or individual plugin files for plugin-specific mappings.

### Modifying Options
Edit `lua/config/options.lua` to change Neovim settings.

## Troubleshooting

### LSP Not Working
1. Check if language server is installed: `:Mason`
2. Check LSP status: `:LspInfo`
3. Check health: `:checkhealth lsp`

### Telescope Errors
1. Install ripgrep: `sudo apt install ripgrep` (Ubuntu/Debian)
2. Check Telescope health: `:checkhealth telescope`

### Treesitter Issues
1. Update parsers: `:TSUpdate`
2. Check installed parsers: `:TSInstallInfo`

## Notes

- This configuration uses Neovim 0.11.2+ features
- Leader key is set to Space
- All backgrounds are transparent
- LSP servers auto-install on first use
- Which-key shows instantly (no delay)

---

**Enjoy coding with your new Neovim setup!**

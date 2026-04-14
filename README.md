# Neovim Configuration

Personal Neovim configuration built on [LazyVim](https://github.com/LazyVim/LazyVim).

## Installation

```bash
git clone https://github.com/vulcanshen/nvim-config.git ~/.config/nvim
```

## Architecture

**Entry point**: `init.lua` -> `lua/config/lazy.lua` (bootstraps lazy.nvim + LazyVim)

### Core Config (`lua/config/`)

| File | Description |
|---|---|
| `lazy.lua` | Plugin manager bootstrap, imports LazyVim core + custom plugins |
| `keymaps.lua` | Custom keymaps (window zoom, resize mode, toggle zoom) |
| `options.lua` | Custom vim options (`conceallevel=0` to show markdown symbols) |
| `autocmds.lua` | Custom autocommands (currently empty) |

### Plugins (`lua/plugins/`)

| File | Plugin | Description |
|---|---|---|
| `blink.lua` | saghen/blink.cmp | Completion engine with `<CR>` accept |
| `snacks.lua` | folke/snacks.nvim | File explorer (width 28), replaces netrw |
| `lualine.lua` | nvim-lualine/lualine.nvim | Custom statusline with Catppuccin colors, transparent background |
| `indent-blankline.lua` | lukas-reineke/indent-blankline.nvim | Rainbow indent guides (7 colors) |
| `vim-tmux-navigator.lua` | christoomey/vim-tmux-navigator | `<C-h/j/k/l>` tmux/nvim window navigation |
| `vim-visual-multi.lua` | mg979/vim-visual-multi | Multi-cursor editing (`<C-n>` select, `\\A` select all) |

### LazyVim Extras

- `ui.indent-blankline`
- `ui.mini-indentscope`

## Custom Keymaps

| Key | Mode | Description |
|---|---|---|
| `<C-f>` | Normal | Window zoom (maximize/restore) |
| `<C-f>` | Terminal | Terminal zoom |
| `<C-w>>` / `<C-w><` | Normal | Enter resize mode (keep pressing `>` / `<` to resize, any other key to exit) |
| `<C-w>z` | Normal | Toggle window zoom width (maximize/restore) |
| `<CR>` | Insert | Accept blink completion, fallback to normal enter |
| `<C-n>` / `<C-p>` | Insert | Select next/prev completion item |

## Formatting

Lua files formatted with [StyLua](https://github.com/JohnnyMorganz/StyLua): 2-space indent, 120 column width (see `stylua.toml`).

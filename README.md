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
| `options.lua` | Custom vim options (inherits LazyVim defaults) |
| `autocmds.lua` | Custom autocommands (dap-repl buffer unlisting) |

### Plugins (`lua/plugins/`)

| File | Plugin | Description |
|---|---|---|
| `blink.lua` | saghen/blink.cmp | Completion engine with `<CR>` accept, disabled in dap-ui watches/repl |
| `bufferline.lua` | akinsho/bufferline.nvim | Filters dap-repl from tab line |
| `snacks.lua` | folke/snacks.nvim | File explorer (width 28), replaces netrw |
| `lualine.lua` | nvim-lualine/lualine.nvim | Custom statusline with Catppuccin colors, transparent background |
| `indent-blankline.lua` | lukas-reineke/indent-blankline.nvim | Rainbow indent guides (7 colors) |
| `vim-tmux-navigator.lua` | christoomey/vim-tmux-navigator | `<C-h/j/k/l>` tmux/nvim window navigation |
| `nvim-java-debugger.lua` | nvim-dap + nvim-dap-ui + nvim-java-debugger | Java debugging setup with custom DAP UI layout |

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

## DAP UI Layout

```
+------------------+-----------------------------+
| scopes     (25%) |                             |
|------------------+          source code        |
| breakpoints(25%) |                             |
|------------------+                             |
| stacks     (25%) |                             |
|------------------+-----------------------------+
| watches    (25%) | repl (60%)  | console (40%) |
+------------------+-------------+---------------+
```

- **scopes**: Local variables in current scope
- **breakpoints**: All set breakpoints
- **stacks**: Call stack frames
- **watches**: User-defined watch expressions
- **repl**: DAP output and interactive evaluation (`dap>` prompt)
- **console**: Integrated terminal for `runInTerminal` requests

Debug sessions automatically open/close the DAP UI.

## Formatting

Lua files formatted with [StyLua](https://github.com/JohnnyMorganz/StyLua): 2-space indent, 120 column width (see `stylua.toml`).

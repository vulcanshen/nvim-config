# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration built on **LazyVim** (the starter template from folke/LazyVim). It relies heavily on LazyVim's opinionated defaults and applies minimal customization on top.

## Architecture

**Entry point**: `init.lua` → requires `config.lazy`

**`lua/config/`** — Core configuration (loaded by LazyVim automatically):
- `lazy.lua` — Bootstraps lazy.nvim plugin manager + LazyVim setup. Imports `lazyvim.plugins` (core) then `plugins/` (custom).
- `keymaps.lua` — Custom keymaps (currently: `<C-f>` remapped to window zoom in normal/terminal modes)
- `options.lua` — Custom vim options (currently empty, inherits LazyVim defaults)
- `autocmds.lua` — Custom autocommands (currently empty)

**`lua/plugins/`** — Custom plugin specs (each file returns a table of lazy.nvim specs):
- `blink.lua` — Blink completion engine with `<C-j>`/`<C-k>`/`<CR>` keybindings
- `snacks.lua` — Snacks.nvim explorer (width 30) and picker with custom layout
- `indent-blankline.lua` — Rainbow indent guides (7-color cycle)
- `example.lua` — Disabled reference file (`if true then return {} end`) showing patterns for adding LSP servers, formatters, treesitter parsers, etc.

**`lazyvim.json`** — Tracks enabled LazyVim extras: `ui.indent-blankline`, `ui.mini-indentscope`

## Key Patterns

**Adding plugins**: Create a new `.lua` file in `lua/plugins/` returning a spec table. See `example.lua` for patterns (override existing plugins via `opts`, add LSP servers via mason `ensure_installed`, etc.).

**Plugin override pattern**: To modify a LazyVim-managed plugin, use the same plugin name and provide `opts` — lazy.nvim deep-merges them. Use `opts = function(_, opts)` for programmatic modification.

**Lazy loading**: Custom plugins default to `lazy = false` (load at startup). LazyVim plugins use `lazy = true`. Use `event`, `keys`, or `cmd` for conditional loading.

## Formatting

Lua files are formatted with **StyLua**: 2-space indent, 120 column width (see `stylua.toml`).

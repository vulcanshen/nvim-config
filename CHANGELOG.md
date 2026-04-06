# Changelog

## v1.0.0 (2026-04-06)

### Added
- **Resize mode**: `<C-w>>` / `<C-w><` enters resize mode, keep pressing `>` / `<` to continuously resize window width
- **Toggle zoom**: `<C-w>z` toggles current window between maximized and original width
- **DAP UI**: nvim-dap + nvim-dap-ui + nvim-java-debugger integration with custom layout
  - Left sidebar: scopes / breakpoints / stacks / watches (25% each)
  - Bottom: repl (60%) | console (40%)
  - Auto open/close on debug session start/end
- **Bufferline filter**: Hide dap-repl buffer from tab line
- **Autocmd**: Keep dap-repl buffer unlisted to prevent polluting buffer list
- **Blink.cmp**: Disabled in `dapui_watches` and `dap-repl` to avoid CR key conflicts

### Changed
- Updated README with full configuration documentation

### Removed
- Removed redundant `nvim-dap-ui.lua` (merged into `nvim-java-debugger.lua`)

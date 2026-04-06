return {
  "saghen/blink.cmp",
  opts = {
    enabled = function()
      local disabled = { dapui_watches = true, ["dap-repl"] = true }
      return not disabled[vim.bo.filetype]
    end,
    keymap = {
      preset = "default",
      ["<C-n>"] = { "select_next", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
    },
    completion = {
      list = {
        selection = {
          auto_insert = false,
        },
      },
    },
  },
}

return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<M-n>"] = { "select_next", "fallback" },
      ["<M-p>"] = { "select_prev", "fallback" },
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

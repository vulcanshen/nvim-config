return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      custom_filter = function(buf)
        return vim.bo[buf].filetype ~= "dap-repl"
      end,
    },
  },
}

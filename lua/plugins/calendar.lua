return {
  {
    "vulcanshen/calendar.nvim",
    lazy = false,
    dependencies = { "folke/snacks.nvim" },
    opts = {
      time_format = "%H:%M:%S",
      highlights = {
        CalendarTime = { fg = "#59b4ff", bold = true },
        CalendarToday = { fg = "#000000", bg = "#ffff00", bold = true },
        CalendarDay = { fg = "#59b4ff" },
      },
    },
    keys = {
      { "<leader>uC", "<cmd>CalendarToggle<cr>", desc = "Toggle Calendar" },
    },
  },
}

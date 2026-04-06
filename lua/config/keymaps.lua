-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("t", "<C-f>", [[<C-\><C-n><leader>wmi]], { remap = true, desc = "Terminal Zoom" })

vim.keymap.set("n", "<C-f>", "<leader>wm", { remap = true, desc = "Window Zoom" })

local function resize_mode(dir)
  vim.cmd("wincmd " .. dir)
  while true do
    vim.cmd("redraw")
    local ok, c = pcall(vim.fn.getcharstr)
    if not ok then break end
    if c == ">" then vim.cmd("wincmd >")
    elseif c == "<" then vim.cmd("wincmd <")
    else
      vim.api.nvim_feedkeys(c, "n", false)
      break
    end
  end
end

vim.keymap.set("n", "<C-w>>", function() resize_mode(">") end, { desc = "Resize mode >" })
vim.keymap.set("n", "<C-w><", function() resize_mode("<") end, { desc = "Resize mode <" })

local saved_width = nil
vim.keymap.set("n", "<C-w>z", function()
  local win = vim.api.nvim_get_current_win()
  local cur_width = vim.api.nvim_win_get_width(win)
  if saved_width then
    vim.api.nvim_win_set_width(win, saved_width)
    saved_width = nil
  else
    saved_width = cur_width
    vim.cmd("wincmd |") -- maximize width
  end
end, { desc = "Toggle window zoom width" })

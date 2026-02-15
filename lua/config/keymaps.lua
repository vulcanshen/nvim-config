-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("t", "<C-f>", [[<C-\><C-n><leader>wmi]], { remap = true, desc = "Terminal Zoom" })

vim.keymap.set("n", "<C-f>", "<leader>wm", { remap = true, desc = "Window Zoom" })

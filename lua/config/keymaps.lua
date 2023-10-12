-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
-- exit insert mode with jk
map("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

-- save to file
map("n", "<leader>w", "<cmd>:w<cr>", { desc = "Save to file" })

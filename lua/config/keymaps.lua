-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
-- exit insert mode with jk
map("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

-- quit
map("n", "<C-q>", "<cmd>qa<cr>", { desc = "Quit all" })
map("n", "<leader>w", "<cmd>:w<cr>", { desc = "Save to file" })

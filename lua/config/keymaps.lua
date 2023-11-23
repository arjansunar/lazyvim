-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

local ts_utils = require("nvim-treesitter.ts_utils")
-- exit insert mode with jk
map("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

-- map ; to :
map("n", ";", ":", { noremap = true, silent = true })

map("n", "<leader>U", function()
  local new_text = vim.fn.system("uuidgen"):gsub("\n", "")
  print(new_text)
  local node = ts_utils.get_node_at_cursor()
  if not node then
    error("No node found at cursor")
    return
  end
  local start_row, start_col, end_row, end_col = node:range()
  vim.api.nvim_buf_set_text(0, start_row, start_col, end_row, end_col, { new_text })
end, { noremap = true, silent = true })

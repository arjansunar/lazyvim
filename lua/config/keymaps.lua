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

map("n", "<leader>cs", '<cmd>s/"/`/g<cr>', { noremap = true, silent = true, desc = 'Convert " to `' })

map(
  "n",
  "<Leader>nf",
  ":lua require('neogen').generate({ type = 'func' })<CR>",
  { noremap = true, silent = true, desc = "Genrate func docs" }
)

local function insert_on_top(line)
  -- Go to the top of the file
  vim.cmd("normal! gg")
  -- Insert the specified string if it's not already there
  local firstLine = vim.fn.getline(1)
  if not firstLine:match("^" .. line) then
    vim.fn.append(0, line)
  end
end

local function pascal_case_to_snake_case()
  -- Get the word under the cursor
  local word = vim.fn.expand("<cword>")

  -- Convert PascalCase to snake_case
  local snake_case = word:gsub("(%u)", "_%1"):gsub("^_", ""):lower()

  -- Replace the word with the snake_case version
  vim.api.nvim_command("normal ciw" .. snake_case)
end

map("n", "<Leader>nuc", function()
  insert_on_top('"use client";')
end, { noremap = true, silent = true, desc = "Insert use client" })

map("n", "<Leader>nus", function()
  insert_on_top('"use server";')
end, { noremap = true, silent = true, desc = "Insert use client" })

map(
  "n",
  "<Leader>nsc",
  pascal_case_to_snake_case,
  { noremap = true, silent = true, desc = "Convert PascalCase to snake_case" }
)

map("n", "<leader>gf", function()
  vim.lsp.buf.format()
end, { noremap = true, silent = true, desc = "Format buffer" })

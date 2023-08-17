return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- add a keymap to browse plugin files
    {
      "<leader>gt",
      "<cmd>Telescope git_status<cr>",
      desc = "Find git status",
    },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "bottom" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}

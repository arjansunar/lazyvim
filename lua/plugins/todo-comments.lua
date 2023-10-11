return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    --
    keywords = {
      REFAC = { icon = "🚩", color = "error", alt = { "REFACTOR", "REF" } },
      TORM = { icon = "🪣", color = "error", alt = { "TO-RM", "REMOVE" } },
    },
  },
}

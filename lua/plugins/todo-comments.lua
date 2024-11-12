return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = function(_, opts)
    -- vim.table.insert(opts.keywords, {
    --   TORM = { icon = "🪣", color = "error", alt = { "REMOVE" } },
    --   REFAC = { icon = "🚩", color = "error", alt = { "REFACTOR", "REF" } },
    -- })
  end,
}

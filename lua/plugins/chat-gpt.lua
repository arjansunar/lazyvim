return {

  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    -- TODO: get api keys
    require("chatgpt").setup()
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
  },
}

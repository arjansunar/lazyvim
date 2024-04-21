return {

  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    local home = os.getenv("HOME")
    require("chatgpt").setup({
      api_key_cmd = "bash " .. home .. "/get-gpt/api-key.sh",
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
  },
}

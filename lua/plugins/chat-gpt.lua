return {

  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",

  config = function()
    local home = os.getenv("HOME")
    require("chatgpt").setup({
      api_key_cmd = "bash " .. home .. "/get-gpt/api-key.sh",
    })

    local wk = require("which-key")
    wk.add({
      { "<leader>a", group = "ChatGPT" },
      { "<leader>ac", "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
      {
        mode = { "n", "v" },
        { "<leader>aa", "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests" },
        { "<leader>ad", "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring" },
        { "<leader>ae", "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction" },
        { "<leader>af", "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs" },
        { "<leader>ag", "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction" },
        { "<leader>ak", "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords" },
        { "<leader>al", "<cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis" },
        { "<leader>ao", "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code" },
        { "<leader>ar", "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit" },
        { "<leader>as", "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize" },
        { "<leader>at", "<cmd>ChatGPTRun translate<CR>", desc = "Translate" },
        { "<leader>ax", "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code" },
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
  },
}

return {
  -- Configure the LSP for TypeScript/JavaScript using tsserver
  {
    "neovim/nvim-lspconfig",
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          ts_ls = { enabled = false },
        },
      },
    },
  },
}

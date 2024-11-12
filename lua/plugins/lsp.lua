return {
  -- Configure the LSP for TypeScript/JavaScript using tsserver
  {
    "neovim/nvim-lspconfig",
    {
      "neovim/nvim-lspconfig",
      opts = function(_, opts)
        -- print(vim.inspect(opts.servers))
        -- table.insert(opts.servers, { ts_ls = { enabled = false } })
      end,
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "ruff",
      })
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      vim.list_extend(opts.sources, {
        require("none-ls.formatting.ruff"),
        require("none-ls.diagnostics.ruff"),
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      vim.list_extend(opts.formatters_by_ft, {
        ["python"] = { "ruff" },
      })
    end,
  },
}

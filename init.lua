-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.filetype.add({
  filename = {
    ["justfile"] = "just",
    ["JUSTFILE"] = "just",
    [".justfile"] = "just",
  },
})

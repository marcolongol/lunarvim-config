-- typescript formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    name = "prettierd",
  },
})

-- typescript linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  {
    name = "eslint",
  },
})

-- python formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    name = "black",
    args = { "--max-line-length", "87" },
  },
  {
    name = "isort",
  },
})

-- python linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  {
    name = "flake8",
    args = { "--max-line-length", "87" },
  },
  {
    name = "mypy",
  },
  {
    name = "pylint",
    args = { "--max-line-length", "87" },
  },
  {
    name = "ruff",
    args = { "--fix", "--max-line-length", "87" },
  },
})

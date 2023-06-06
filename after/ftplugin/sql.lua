-- sql formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    name = "sql_formatter",
  },
})

-- sql linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  {
    name = "sqlfluff",
    args = { "--dialect", "postgres", "--exclude-rules", "LT02,LT09,LT01,LT06,LT12,CP03" },
  },
})

-- lsp
local opts = {
  filetypes = { "sql" },
}
require("lvim.lsp.manager").setup("sqlls", opts)

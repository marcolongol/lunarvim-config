-- cs formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    name = "csharpier",
  },
})

-- cs linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  {
    name = "semgrep",
  },
})

-- lsp
local opts = {
  filetypes = { "cs" },
}
-- require("lvim.lsp.manager").setup("", opts)

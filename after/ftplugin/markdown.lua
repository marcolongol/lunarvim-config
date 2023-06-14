-- md formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    name = "markdownlint",
  },
})

-- md linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  {
    name = "markdownlint",
  },
})

-- lsp
local opts = {
  filetypes = { "markdown" },
}

require("lvim.lsp.manager").setup("marksman", opts)

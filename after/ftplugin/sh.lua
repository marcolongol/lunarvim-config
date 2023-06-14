-- sh formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    name = "shfmt",
  },
  {
    name = "beautysh",
  },
})

-- sh linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  {
    name = "shellcheck",
    args = "--format=gcc",
  },
})

-- lsp
local opts = {
  filetypes = { "sh" },
}
require("lvim.lsp.manager").setup("shellharden", opts)

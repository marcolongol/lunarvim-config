-- formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    name = "prettier",
  },
})

-- linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  {
    name = "jsonlint",
  },
})

--lsp
local opts = {
  settings = {
    json = {
      schemas = require("schemastore").json.schemas(),
      validate = { enable = true },
    },
  },
}
require("lvim.lsp.manager").setup("jsonls", opts)

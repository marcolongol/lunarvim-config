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
  -- {
  --   name = "yamllint",
  -- },
})

--lsp
local opts = {
  settings = {
    yaml = {
      schemaStore = {
        enable = false,
      },
      schemas = require("schemastore").yaml.schemas(),
      validate = true,
    },
  },
}
require("lvim.lsp.manager").setup("yamlls", opts)

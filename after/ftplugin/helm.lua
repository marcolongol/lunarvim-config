-- helm formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  -- {
  --   name = "helmfmt",
  -- },
})

-- helm linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  -- {
  --   name = "helmlint",
  -- },
})

-- helm_ls
local opts = {
  on_attach = require("lvim.lsp").common_on_attach,
  filetypes = { "helm" },
  root_dir = require("lspconfig/util").root_pattern("Chart.yaml", vim.fn.getcwd()),
  cmd = { "helm_ls", "serve" },
}
require("lvim.lsp.manager").setup("helm_ls", opts)

-- yamlls
opts = {
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

-- typescript formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    name = "prettier",
  },
})

-- typescript linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  {
    name = "eslint",
  },
})

-- typescript code actions
local code_actions = require("lvim.lsp.null-ls.code_actions")
code_actions.setup({
  {
    name = "eslint",
  },
})

require("lvim.lsp.manager").setup("angularls")

-- lua formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    name = "stylua",
  },
})

-- lua linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  -- {
  --   name = "selene",
  -- },
  {
    name = "luacheck",
  },
})

-- lsp
local opts = {
  on_attach = require("lvim.lsp").common_on_attach,
  filetypes = { "lua" },
  root_dir = require("lspconfig/util").root_pattern(".git", vim.fn.getcwd()),
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}
require("lvim.lsp.manager").setup("lua_ls", opts)

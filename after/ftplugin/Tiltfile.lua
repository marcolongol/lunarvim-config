local util = require("lspconfig/util")

-- Tiltfile formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    name = "black",
    filetypes = { "Tiltfile" },
  },
  {
    name = "isort",
    filetypes = { "Tiltfile" },
  },
})

-- Tiltfile linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  {
    name = "pylint",
  },
})

-- Setup lsp for Tiltfile
local opts = {
  cmd = { "tilt", "lsp", "start", "--debug", "--verbose" },
  filetypes = { "Tiltfile" },
  root_dir = function(fname)
    return util.root_pattern(".git", "Tiltfile")(fname) or util.path.dirname(fname)
  end,
}

require("lvim.lsp.manager").setup("pyright", opts) -- HACK: pyright as proxy

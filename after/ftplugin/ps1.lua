local notify = require("notify")
local bundle_path = vim.fn.stdpath("data") .. "\\mason\\packages\\powershell-editor-services"
local cmd = {
  "pwsh",
  "-NoLogo",
  "-NoProfile",
  "-Command",
  bundle_path .. "\\PowerShellEditorServices\\Start-EditorServices.ps1",
  "-BundledModulesPath",
  bundle_path,
  "-LogPath",
  vim.fn.stdpath("cache") .. "\\lsp.log",
  "-LogLevel",
  "Verbose",
  "-SessionDetailsPath",
  vim.fn.stdpath("cache") .. "\\lsp.session.json",
  "-FeatureFlags",
  "@()",
  "-AdditionalModules",
  "@()",
  "-HostName",
  "nvim",
  "-HostProfileId",
  "nvim",
  "-HostVersion",
  "0.0.1",
  "-Stdio",
}
notify(cmd)

-- ps1 formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  {
    name = "prettier",
  },
})

-- ps1 linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({})

-- lsp
local opts = {
  filetypes = { "ps1" },
  root_dir = require("lspconfig/util").root_pattern(".git", vim.fn.getcwd()),
  bundle_path = bundle_path,
  cmd = cmd,
  settings = {
    powershell = {
      scriptAnalysis = true,
      enableProfileLoading = false,
    },
  },
}

require("lvim.lsp.manager").setup("powershell_es", opts)
require("lspconfig").powershell_es.setup(opts)

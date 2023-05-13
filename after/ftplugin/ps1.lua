local notify = require("notify")

local bundle_path = vim.fn.stdpath("data") .. "\\mason\\packages\\powershell-editor-services"
local command_path = bundle_path .. "\\PowerShellEditorServices\\Start-EditorServices.ps1"
local session_path = bundle_path .. "\\PowerShellEditorServices\\SessionDetails.json"
local cmd = {
	"pwsh",
	"-NoLogo",
	"-NoProfile",
	"-Command",
	command_path,
	"-Hostname",
	"nvim",
	"-HostProfileId",
	"0",
	"-HostVersion",
	"1.0.0",
	"-SessionDetailsPath",
	session_path,
	"-Stdio",
}

-- notify(bundle_path, "info")
-- notify(cmd, "info")

-- ps1 code actions
local code_actions = require("lvim.lsp.null-ls.code_actions")
code_actions.setup({
	{
		name = "refactoring",
	},
})

-- ps1 formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({})

-- ps1 linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({})

-- lsp
require("lspconfig").powershell_es.setup({
	cmd = cmd,
})

-- lua code actions
local code_actions = require("lvim.lsp.null-ls.code_actions")
code_actions.setup({
	{
		name = "refactoring",
	},
})

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
	{
		name = "luacheck",
	},
})

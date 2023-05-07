-- python code actions
local code_actions = require("lvim.lsp.null-ls.code_actions")
code_actions.setup({
	{
		name = "refactoring",
	},
})

-- python formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{
		name = "black",
	},
	{
		name = "isort",
	},
})

-- python linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{
		name = "flake8",
	},
	{
		name = "mypy",
	},
	{
		name = "pylint",
	},
	{
		name = "ruff",
	},
})

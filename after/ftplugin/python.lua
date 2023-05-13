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
		args = { "--max-line-length", "87" },
	},
	{
		name = "isort",
		args = { "--max-line-length", "87" },
	},
})

-- python linting
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{
		name = "flake8",
		args = { "--max-line-length", "87" },
	},
	{
		name = "mypy",
	},
	{
		name = "pylint",
		args = { "--max-line-length", "87" },
	},
	{
		name = "ruff",
		args = { "--fix", "--max-line-length", "87" },
	},
})

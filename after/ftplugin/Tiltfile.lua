-- Tiltfile code actions
local code_actions = require("lvim.lsp.null-ls.code_actions")
code_actions.setup({
	{
		name = "refactoring",
		filetypes = { "Tiltfile" },
	},
})

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
		name = "flake8",
		filetypes = { "Tiltfile" },
	},
	{
		name = "mypy",
		filetypes = { "Tiltfile" },
	},
	{
		name = "pylint",
		filetypes = { "Tiltfile" },
	},
	{
		name = "ruff",
		filetypes = { "Tiltfile" },
	},
})

-- Setup lsp for Tiltfile
local opts = {
	filetypes = { "Tiltfile" },
}
require("lvim.lsp.manager").setup("pyright", opts)

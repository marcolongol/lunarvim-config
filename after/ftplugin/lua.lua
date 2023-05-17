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

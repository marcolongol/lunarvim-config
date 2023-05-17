-- lsp
local opts = {
	settings = {
		json = {
			schemas = require("schemastore").json.schemas(),
			validate = { enable = true },
		},
	},
}
require("lvim.lsp.manager").setup("jsonls", opts)

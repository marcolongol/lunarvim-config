-- lsp
local capabilities = vim.lsp.protocol.make_client_capabilities()
local opts = {
  capabilities = capabilities,
  filetypes = {
    "html",
    "css",
    "scss",
    "less",
  },
  init_options = {
    html = {
      options = {
        -- For possible options check https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
      },
    },
  },
}
require("lvim.lsp.manager").setup("emmet_ls", opts)
-- treesitter
reload("marcolongol.treesitter")

-- options
reload("marcolongol.vim-options")
reload("marcolongol.lvim-options")

-- plugins
reload("marcolongol.plugins")

-- autocmds
reload("marcolongol.autocmds")

-- lsp
reload("marcolongol.lsp")

-- keymaps
reload("marcolongol.keymaps")

-- dashboard
reload("marcolongol.dashboard")

-- if running in neovide, load neovide settings
if vim.g.neovide then
  reload("marcolongol.neovide")
end

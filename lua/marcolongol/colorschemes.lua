-- colorschemes configs
local config = require("marcolongol.config.colorschemes")

local SELECTED_COLORSHEME = "oxocarbon"

local colorschemes_dict = {
  { "lunarvim/lunar.nvim", config = config.lunar },
  { "shaunsingh/moonlight.nvim", config = config.moonlight },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "morhetz/gruvbox", {} },
  { "sainnhe/gruvbox-material", {} },
  { "sainnhe/edge", {} },
  { "lunarvim/horizon.nvim", {} },
  { "tomasr/molokai", {} },
  { "ayu-theme/ayu-vim", {} },
  { "folke/tokyonight.nvim", {} },
  { "folke/lsp-colors.nvim", {} },
  { "marko-cerovac/material.nvim", {} },
  { "shaunsingh/nord.nvim", {} },
}

-- Change theme settings
lvim.colorscheme = SELECTED_COLORSHEME
lvim.transparent_window = true
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true

return colorschemes_dict

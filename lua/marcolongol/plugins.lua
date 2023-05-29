-- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {

  -- Copilot
  {
    "zbirenbaum/copilot.lua",
    after = { "copilot.lua" },
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("marcolongol.config.copilot").setup()
    end,
  },

  -- colorschemes
  { "lunarvim/lunar.nvim" },
  { "morhetz/gruvbox" },
  { "sainnhe/gruvbox-material" },
  { "sainnhe/edge" },
  { "lunarvim/horizon.nvim" },
  { "tomasr/molokai" },
  { "ayu-theme/ayu-vim" },
  { "folke/tokyonight.nvim" },
  { "folke/lsp-colors.nvim" },
  { "marko-cerovac/material.nvim" },
  { "shaunsingh/nord.nvim" },
  { "shaunsingh/moonlight.nvim" },

  -- trouble
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  -- todo-comments
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },

  -- repeat, surround, commentary
  { "tpope/vim-repeat" },
  { "tpope/vim-surround" },
  { "tpope/vim-commentary" },

  -- bqf
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("marcolongol.config.bqf").setup()
    end,
  },

  {
    "fildo7525/pretty_hover",
    event = "LspAttach",
    opts = {},
  },

  -- json schemastore
  {
    "b0o/schemastore.nvim",
  },

  -- vim-kubernetes
  {
    "andrewstuart/vim-kubernetes",
  },

  -- Telescope plugins
  {
    "jvgrootveld/telescope-zoxide",
  },

  {
    "AckslD/nvim-neoclip.lua",
    config = function()
      require("neoclip").setup()
    end,
  },

  -- refactoring
  {
    "ThePrimeagen/refactoring.nvim",
  },

  -- rainbow csv
  {
    "cameron-wags/rainbow_csv.nvim",
    config = true,
    ft = {
      "csv",
      "tsv",
      "csv_semicolon",
      "csv_whitespace",
      "csv_pipe",
      "rfc_csv",
      "rfc_semicolon",
    },
    cmd = {
      "RainbowDelim",
      "RainbowDelimSimple",
      "RainbowDelimQuoted",
      "RainbowMultiDelim",
    },
  },

  -- gitignore
  {
    "wintermute-cell/gitignore.nvim",
  },

  -- nvim-notify
  { "rcarriga/nvim-notify" },

  -- color-picker
  {
    "ziontee113/color-picker.nvim",
    config = function()
      require("marcolongol.config.color-picker").setup()
    end,
  },

  -- colorizer
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },

  -- editorconfig
  {
    "editorconfig/editorconfig-vim",
  },

  -- hardtime
  -- {
  --     "m4xshen/hardtime.nvim",
  --     opts = {},
  -- },
}

table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  event = "InsertEnter",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    local ok, cmp = pcall(require, "copilot_cmp")
    if ok then
      cmp.setup({})
    end
  end,
})

-- Telescope config
lvim.builtin.telescope.on_config_done = require("marcolongol.config.telescope").setup

-- nvim-tree
lvim.builtin.nvimtree.on_config_done = require("marcolongol.config.nvim-tree").setup

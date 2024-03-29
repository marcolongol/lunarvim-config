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

  -- trouble
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  -- todo-comments
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    event = "BufRead",
    config = function()
      require("marcolongol.config.todo-comments").setup()
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

  -- pretty hover
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
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        stages = "fade_in_slide_out",
        timeout = 5000,
        background_colour = "#282c34",
        icons = {
          ERROR = "",
          WARN = "",
          INFO = "",
          DEBUG = "",
          TRACE = "✎",
        },
      })
      vim.notify = require("notify")
    end,
  },

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

  -- wakatime
  {
    "wakatime/vim-wakatime",
  },

  -- lsp_signature
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require("lsp_signature").setup()
    end,
  },

  -- package-info
  {
    "vuki656/package-info.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("marcolongol.config.package-info").setup()
    end,
  },

  -- blamer
  -- ! WARN: not working (12/22/2023)
  -- {
  --   "APZelos/blamer.nvim",
  --   config = function()
  --     vim.g.blamer_enabled = true
  --   end,
  -- },

  -- diffview
  {
    "sindrets/diffview.nvim",
    config = function()
      require("marcolongol.config.diffview").setup()
    end,
  },

  -- git-conflict
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = function()
      require("git-conflict").setup()
    end,
  },

  -- lsp_lines
  {
    url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  },

  -- lsp-colors
  {
    "folke/lsp-colors.nvim",
    config = function()
      require("lsp-colors").setup()
    end,
  },

  -- cmp-under-comparator
  {
    "lukas-reineke/cmp-under-comparator",
  },

  -- nvim-scrollbar
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require("scrollbar").setup()
    end,
  },

  -- lsp saga
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require("lspsaga").setup()
    end,
  },

  -- lspkind
  {
    "onsails/lspkind-nvim",
    event = "BufRead",
    config = function()
      require("lspkind").init()
    end,
  },

  -- vim-helm
  {
    "towolf/vim-helm",
  },

  -- toggle-bool
  {
    "gerazov/toggle-bool.nvim",
    config = function()
      require("marcolongol.config.toggle-bool").setup()
    end,
  },
}

local colorschemes = require("marcolongol.colorschemes")

for _, colorscheme in ipairs(colorschemes) do
  table.insert(lvim.plugins, colorscheme)
end

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

-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {

    -- Copilot
    {
        "zbirenbaum/copilot.lua",
        after = { "copilot.lua" },
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require('marcolongol.config.copilot').setup()
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


    -- trouble
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
    },


    -- todo-comments
    -- TODO:
    -- WARN:
    -- BUG:
    -- HACK:
    -- PERF:
    -- NOTE:
    -- FIXME:
    -- XXX:
    -- OPTIMIZE:
    {
        "folke/todo-comments.nvim",
        event = "BufRead",
        config = function()
            require("todo-comments").setup()
        end
    },

    -- repeat, surround, commentary
    { "tpope/vim-repeat" },
    { "tpope/vim-surround" },
    { "tpope/vim-commentary" },

    -- hop
    {
        "phaazon/hop.nvim",
        event = "BufRead",
        config = function()
            require("hop").setup()
            vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
            vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
        end,
    },

    -- bqf
    {
        "kevinhwang91/nvim-bqf",
        event = { "BufRead", "BufNew" },
        config = function()
            require('marcolongol.config.bqf').setup()
        end,
    },

    {
        "fildo7525/pretty_hover",
        event = "LspAttach",
        opts = {}
    },

    -- json schemastore
    {
        "b0o/schemastore.nvim",
    },

    -- vim-kubernetes
    {
        "andrewstuart/vim-kubernetes",
    }

}

table.insert(
    lvim.plugins, {
        "zbirenbaum/copilot-cmp",
        event = "InsertEnter",
        dependencies = { "zbirenbaum/copilot.lua" },
        config = function()
            local ok, cmp = pcall(require, "copilot_cmp")
            if ok then cmp.setup({}) end
        end,
    }
)

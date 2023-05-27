-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>

lvim.leader = "space"

-- NORMAL MODE
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

vim.g.bufferline = {
    animation = true,
    auto_hide = true,
    closable = true,
    clickable = true,
    icon_close_tab = "❌",
    icon_close_tab_modified = "●",
    icon_separator_active = "▎",
    icon_separator_inactive = "▎",
    icon_pinned = "📌",
    maximum_padding = 4,
    maximum_length = 30,
    semantic_letters = true,
    no_name_title = nil,
}

lvim.lsp.buffer_mappings.normal_mode["gr"] = {
    ":lua require('telescope.builtin').lsp_references()<CR>",
}

lvim.lsp.buffer_mappings.normal_mode["gd"] = {
    ":lua require('telescope.builtin').lsp_definitions()<CR>",
}

lvim.lsp.buffer_mappings.normal_mode["gD"] = {
    ":lua require('telescope.builtin').type_definition()<CR>",
}

lvim.lsp.buffer_mappings.normal_mode["gf"] = {
    ":Telescope frecency<CR>",
}

-- move selection
lvim.keys.visual_mode["J"] = ":m '>+1<CR>gv=gv"
lvim.keys.visual_mode["K"] = ":m '<-2<CR>gv=gv"

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- telescope bindings
-- zoxide
lvim.builtin.which_key.mappings["z"] = {
    name = "Zoxide",
    l = { "<cmd>lua require('telescope').extensions.zoxide.list{}<CR>", "zoxide list" },
    a = { "<cmd>lua require('telescope').extensions.zoxide.list{cmd = 'zoxide add'}<CR>", "Add" },
    r = { "<cmd>lua require('telescope').extensions.zoxide.list{cmd = 'zoxide remove'}<CR>", "Remove" },
}
-- neoclip
lvim.builtin.which_key.mappings["y"] = {
    name = "Neoclip",
    y = { "<cmd>lua require('telescope').extensions.neoclip.default()<CR>", "List" },
    p = { "<cmd>lua require('telescope').extensions.neoclip.pasteboard()<CR>", "Pasteboard" },
}

-- color-picker (color-picker.nvim)
lvim.builtin.which_key.mappings["C"] = {
    name = "Color Picker",
    c = { "<cmd>PickColor<CR>", "Pick Color" },
    i = { "<cmd>PickColorInsert<CR>", "Pick Color Insert" },
}

-- trouble
lvim.builtin.which_key.mappings["t"] = {
  name = "Trouble",
  d = { "<cmd>Trouble document_diagnostics<cr>", "Document Diagnostics" },
  l = { "<cmd>Trouble loclist<cr>", "Location List" },
  q = { "<cmd>Trouble quickfix<cr>", "Quickfix" },
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}

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
    icon_close_tab = '',
    icon_close_tab_modified = '●',
    icon_separator_active = '▎',
    icon_separator_inactive = '▎',
    icon_pinned = '車',
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

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }


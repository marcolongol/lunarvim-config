-- lazygit config

vim.g.lazygit_floating_window_winblend = 0.4
vim.g.lazygit_floating_window_scaling_factor = 0.9
vim.g.lazygit_floating_window_use_plenary = 1
vim.g.lazygit_use_neovim_remote = 1
vim.g.lazygit_use_custom_config_file_path = 0
vim.g.lazygit_config_file_path = ""
vim.g.lazygit_floating_window_border_chars = ['╭','─', '╮', '│', '╯','─', '╰', '│']

local M = {}

local lazygit = require("lazygit")

function M.setup() end

return M

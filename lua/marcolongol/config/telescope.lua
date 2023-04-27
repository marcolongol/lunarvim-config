-- Telescope plugins config
local M = {}

M.setup = function(telescope)
    pcall(telescope.load_extension, "zoxide")
end

return M

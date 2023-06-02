-- Telescope plugins config
local M = {}

M.setup = function(telescope)
  pcall(telescope.load_extension, "zoxide")
  pcall(telescope.load_extension, "neoclip")
  pcall(telescope.load_extension, "package_info")
end

return M

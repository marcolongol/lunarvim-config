-- Telescope plugins config
local M = {}

M.setup = function(telescope)
	pcall(telescope.load_extension, "zoxide")
	pcall(telescope.load_extension, "neoclip")
end

return M

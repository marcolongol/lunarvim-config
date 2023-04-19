-- Copilot config
local M = {}

local copilot = require('copilot')

M.setup = function()
    copilot.setup(
        {
            suggestions = { enabled = false },
            panel = { enabled = false },
            filetypes = {
                yaml = true,
                markdown = true,
                gitcommit = true,
            }
        }
    )
end

return M

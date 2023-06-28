-- toggle-bool plugins config
local M = {}

local toggle_bool = require("toggle-bool")

M.setup = function()
  toggle_bool.setup({
    mapping = "<leader>tt",
    additional_toggles = {
      Yes = "No",
      On = "Off",
      ["0"] = "1",
      Enable = "Disable",
      Enabled = "Disabled",
      First = "Last",
      Before = "After",
      Persistent = "Ephemeral",
      Internal = "External",
      Ingress = "Egress",
      Allow = "Deny",
      Allowed = "Denied",
      All = "None",
      Always = "Never",
      Present = "Absent",
    },
  })
end

return M

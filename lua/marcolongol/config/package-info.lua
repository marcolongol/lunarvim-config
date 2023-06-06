-- package-info config

local M = {}

local package_info = require("package-info")

function M.setup()
  local opts = {
    colors = {
      up_to_date = "#98c379",
      outdated = "#e06c75",
    },
    icons = {
      enable = true, -- Whether to display icons
      style = {
        up_to_date = " | \u{f00c} ",
        outdated = " | \u{f071} ",
      },
    },
    autostart = true, -- Whether to autostart when `package.json` is opened
    hide_up_to_date = true, -- It hides up to date versions when displaying virtual text
    hide_unstable_versions = false, -- It hides unstable versions from version list e.g next-11.1.3-canary3
    -- Can be `npm`, `yarn`, or `pnpm`. Used for `delete`, `install` etc...
    -- The plugin will try to auto-detect the package manager based on
    -- `yarn.lock` or `package-lock.json`. If none are found it will use the
    -- provided one, if nothing is provided it will use `yarn`
    package_manager = "pnpm",
  }
  package_info.setup(opts)
end

return M

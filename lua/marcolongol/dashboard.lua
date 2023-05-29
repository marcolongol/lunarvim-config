local kind = require("marcolongol.kind")

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "custom"

local header = {
  type = "text",
  val = require("marcolongol.banners").dashboard(),
  opts = {
    position = "center",
    hl = "Comment",
  },
}

-- get number of plugins loaded and current date
local plugins_count = 0
for _, _ in pairs(package.loaded) do
  plugins_count = plugins_count + 1
end

local plugins = tostring(plugins_count)
local date = tostring(os.date("%A, %d %B %Y"))

local plugin_count = {
  type = "text",
  val = "└─ " .. kind.cmp_kind.Module .. " " .. plugins .. " plugins in total ─┘",
  opts = {
    position = "center",
    hl = "String",
  },
}

local heading = {
  type = "text",
  val = "┌─ " .. kind.icons.calendar .. " Today is " .. date .. " ─┐",
  opts = {
    position = "center",
    hl = "String",
  },
}

local fortune = require("alpha.fortune")()
-- fortune = fortune:gsub("^%s+", ""):gsub("%s+$", "")
local footer = {
  type = "text",
  val = fortune,
  opts = {
    position = "center",
    hl = "Comment",
    hl_shortcut = "Comment",
  },
}

local function button(sc, txt, keybind)
  local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

  local opts = {
    position = "center",
    text = txt,
    shortcut = sc,
    cursor = 5,
    width = 24,
    align_shortcut = "right",
    hl_shortcut = "Number",
    hl = "Function",
  }
  if keybind then
    opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
  end

  return {
    type = "button",
    val = txt,
    on_press = function()
      local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
      vim.api.nvim_feedkeys(key, "normal", false)
    end,
    opts = opts,
  }
end

-- read from env var
local LUNARVIM_CONFIG_DIR = vim.env.LUNARVIM_CONFIG_DIR

local buttons = {
  type = "group",
  val = {
    button("f", " " .. kind.cmp_kind.Folder .. " Explore", ":Telescope find_files<CR>"),
    button("e", " " .. kind.cmp_kind.File .. " New file", ":ene <BAR> startinsert <CR>"),
    button("s", " " .. kind.icons.magic .. " Restore", ":lua require('persistence').load()<cr>"),
    button(
      "g",
      " " .. kind.icons.git .. " Git Status",
      ":lua require('lvim.core.terminal')._exec_toggle({cmd = 'lazygit', count = 1, direction = 'float'})<CR>"
    ),
    button("r", " " .. kind.icons.clock .. " Recents", ":Telescope oldfiles<CR>"),
    button("c", " " .. kind.icons.settings .. " Config", ":e " .. LUNARVIM_CONFIG_DIR .. "/config.lua<CR>"),
    button(
      "C",
      " " .. kind.cmp_kind.Color .. " Colorscheme Config",
      ":e " .. LUNARVIM_CONFIG_DIR .. "/lua/marcolongol/colorschemes.lua<CR>"
    ),
    button("q", " " .. kind.icons.exit .. " Quit", ":q<CR>"),
  },
  opts = {
    spacing = 1,
  },
}

local section = {
  header = header,
  buttons = buttons,
  plugin_count = plugin_count,
  heading = heading,
  footer = footer,
}

lvim.builtin.alpha.custom = {
  config = {
    layout = {
      { type = "padding", val = 1 },
      section.header,
      { type = "padding", val = 2 },
      section.heading,
      section.plugin_count,
      { type = "padding", val = 1 },
      section.buttons,
      section.footer,
    },
    opts = {
      margin = 5,
    },
  },
}

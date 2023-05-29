-- colorschemes config maps
local M = {
  lunar = function()
    vim.g.lunarvim_colorscheme = "spacegray"
    vim.g.lunarvim_italic_comments = true
    vim.g.lunarvim_italic_keywords = true
    vim.g.lunarvim_italic_functions = true
    vim.g.lunarvim_italic_variables = true
    vim.g.lunarvim_contrast = true
    vim.g.lunarvim_borders = true
    vim.g.lunarvim_disable_background = true
    vim.g.lunarvim_disable_terminal_background = true
    vim.g.lunarvim_sidebars = { "qf", "vista_kind", "terminal", "packer" }
    vim.g.lunarvim_disable_cursorline = false
    vim.g.lunarvim_dark_float = false
    vim.g.lunarvim_colors = {
      red = "#ff0000",
      green = "#00ff00",
      blue = "#0000ff",
      yellow = "#ffff00",
      cyan = "#00ffff",
      magenta = "#ff00ff",
      orange = "#ff8000",
      violet = "#8000ff",
      aqua = "#00ff80",
      grey = "#808080",
      darkgrey = "#404040",
    }
  end,

  moonlight = function()
    vim.g.moonlight_italic_comments = true
    vim.g.moonlight_italic_keywords = true
    vim.g.moonlight_italic_functions = true
    vim.g.moonlight_italic_variables = true
    vim.g.moonlight_contrast = true
    vim.g.moonlight_borders = true
    vim.g.moonlight_disable_background = true
    vim.g.moonlight_disable_terminal_background = true
    vim.g.moonlight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
    vim.g.moonlight_disable_cursorline = false
    vim.g.moonlight_dark_float = false
    vim.g.moonlight_colors = {
      red = "#ff0000",
      green = "#00ff00",
      blue = "#0000ff",
      yellow = "#ffff00",
      cyan = "#00ffff",
      magenta = "#ff00ff",
      orange = "#ff8000",
      violet = "#8000ff",
      aqua = "#00ff80",
      grey = "#808080",
      darkgrey = "#404040",
    }
  end,
}

return M

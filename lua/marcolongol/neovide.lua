-- neovide settings
vim.g.neovide_scale_factor = 1.0

-- Helper function for transparency formatting
local alpha = function()
  return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
end
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
vim.g.neovide_transparency = 0.8
vim.g.transparency = 0.8
vim.g.neovide_background_color = "#0f1117" .. alpha()

vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0

vim.g.neovide_scroll_animation_length = 0.3

vim.g.neovide_hide_mouse_when_typing = false

vim.g.neovide_refresh_rate = 165

vim.g.neovide_no_idle = true

vim.g.neovide_confirm_quit = true

vim.g.neovide_fullscreen = true

vim.g.neovide_cursor_animation_length = 0.05
vim.g.neovide_cursor_trail_size = 0.8
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = true
vim.g.neovide_cursor_unfocused_outline_width = 0.125
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_cursor_vfx_opacity = 200.0
vim.g.neovide_cursor_vfx_particle_lifetime = 10
vim.g.neovide_cursor_vfx_particle_density = 20
vim.g.neovide_cursor_vfx_particle_speed = 2
vim.g.neovide_cursor_vfx_particle_phase = 0.7

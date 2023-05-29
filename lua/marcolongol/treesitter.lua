-- Imports
local ts_configs = require("nvim-treesitter.configs")
local ts_parsers = require("nvim-treesitter.parsers")
local ts_install = require("nvim-treesitter.install")

-- ensure parsers
local ensure = {
  "bash",
  "c",
  "cpp",
  "css",
  "dockerfile",
  "go",
  "gomod",
  "html",
  "javascript",
  "json",
  "jsonc",
  "lua",
  "python",
  "regex",
  "rust",
  "toml",
  "tsx",
  "typescript",
  "yaml",
  "zig",
}

for _, lang in pairs(ensure) do
  ts_install.ensure_installed(lang)
end

-- Compilers
ts_install.compilers = { "zig", "clang", "gcc" }

-- Custom parsers
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.powershell = {
  install_info = {
    url = "https://github.com/jrsconfitto/tree-sitter-powershell",
    files = { "src/parser.c" },
  },
  filetype = "ps1",
  used_by = { "psm1", "psd1", "pssc", "psxml", "cdxml" },
}

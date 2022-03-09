require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "bash",
    "dockerfile",
    "erb",
    "go",
    "html",
    "java",
    "javascript",
    "json",
    "make",
    "markdown",
    "php",
    "ruby",
    "rust",
    "scala",
    "scss"
    "toml",
    "tsx",
    "yaml",
  },
}
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }

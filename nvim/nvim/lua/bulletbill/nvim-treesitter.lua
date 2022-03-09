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
    "go",
    "hcl",
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
    "scss",
    "toml",
    "tsx",
    "yaml"
  },
}
local ft_to_parser = require"nvim-treesitter.parsers".filetype_to_parsername
ft_to_parser.tsx = "javascript"

local configs = require'nvim-treesitter.configs'
configs.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  },
  ensure_installed = all,
  auto_install = true,
}

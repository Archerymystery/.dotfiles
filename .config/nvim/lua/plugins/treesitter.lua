require('nvim-treesitter.configs').setup {
  ensure_installed = { 'lua', 'typescript', 'tsx', 'javascript', "python" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}

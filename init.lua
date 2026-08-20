require("orchestraNotPlay")

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})

require('mini.pairs').setup()
require('mini.tabline').setup()
require('mini.surround').setup()
require('rose-pine').setup({
  styles = {
    italic = false
  }
})

vim.cmd('colorscheme rose-pine')

require('nvim-treesitter.config').setup({
  ensure_installed = {"c", "cpp", "lua", "rust"},
  sync_install = false,
  highlight = {enable = true},
  indent = {enable = true},
})

vim.lsp.enable('clangd')

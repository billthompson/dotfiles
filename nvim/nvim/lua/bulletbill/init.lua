--Remap space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--local ok, _ = pcall(require, 'which-key')
--if not ok then
  --print('error loading which-key')
  --return
--end
require('bulletbill/which-key')

require('bulletbill/nvim-treesitter')
require('bulletbill/telescope')
require('bulletbill/nvim-lsp')
require('bulletbill/nvim-dap')
require('bulletbill/nvim-neotest')


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

require('bulletbill/mason')
require('bulletbill/nvim-treesitter')
require('bulletbill/telescope')
require('bulletbill/nvim-dap')
require('bulletbill/nvim-neotest')
require('bulletbill/obsidian')


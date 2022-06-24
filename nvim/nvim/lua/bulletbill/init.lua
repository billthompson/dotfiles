--Remap space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


require('bulletbill/nvim-treesitter')
require('bulletbill/telescope')
--require('bulletbill/nvim-lsp')


local gh = require('utils').gh

vim.pack.add({ gh 'ThePrimeagen/vim-be-good' })

vim.keymap.set('n', '<leader>vbg', '<cmd>VimBeGood<CR>')

local gh = require('utils').gh

vim.pack.add { gh 'mbbill/undotree' }

vim.g.undotree_WindowLayout = 3
vim.g.undotree_SetFocusWhenToggle = 1
vim.g.undotree_SplitWidth = 0

vim.keymap.set({ 'n', 'v' }, '<leader>u', vim.cmd.UndotreeToggle)

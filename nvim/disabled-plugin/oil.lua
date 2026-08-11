local gh = require('utils').gh

vim.pack.add { gh 'stevearc/oil.nvim' }

local oil = require('oil')
oil.setup({
  view_options = {
    show_hidden = true,
    sort = {
      { "type", "asc" },
      { "name", "asc" }
    }
  },
  keymaps = {
    ['..'] = { 'actions.parent', mode = 'n' },
  }
})

vim.keymap.set('n', '\\', function() oil.open(nil) end, { desc = 'Open current directory' })

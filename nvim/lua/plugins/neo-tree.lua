local gh = require('utils').gh

local plugins = {
  { src = gh 'nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  gh 'nvim-lua/plenary.nvim',
  gh 'MunifTanjim/nui.nvim',
}

if vim.g.have_nerd_font then
  table.insert(plugins, gh 'nvim-tree/nvim-web-devicons')
end

vim.pack.add(plugins)

vim.keymap.set('n', '\\', '<Cmd>Neotree action=focus source=filesystem position=right toggle reveal_force_cwd<CR>', { desc = 'NeoTree reveal', silent = true })

require('neo-tree').setup({
  event_handlers= {
    {
      event = 'file_opened',
      handler = function()
        require('neo-tree.command').execute({
          action = "close"
        })
      end 
    }
  } 
})

---require('neo-tree').setup {
--  filesystem = {
--    window = {
--      mappings = {
--        ['\\'] = 'close_window',
--      },
--    },
--  },
-- }

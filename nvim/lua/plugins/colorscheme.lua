local gh = require('utils').gh

-- vim.pack.add { gh 'folke/tokyonight.nvim' }
-- ---@diagnostic disable-next-line: missing-fields
-- require('tokyonight').setup {
--   styles = {
--     comments = { italic = false },
--   },
-- }
--
-- vim.cmd.colorscheme 'tokyonight-night'
--
vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }

vim.cmd.colorscheme 'catppuccin-macchiato'

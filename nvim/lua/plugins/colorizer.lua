vim.pack.add({
  "https://github.com/catgoose/nvim-colorizer.lua"
})
require("colorizer").setup({
  options = {
    parsers = {
      css = true,
      rgb = { enable = true },
      hsl = { enable = true },
      oklch = { enable = true },
      css_color = { enable = true },
      tailwind = {
        enable = true,
        update_names = true,
        lsp = {
          enable = true,
        }
      }
    },
    filetypes = {
      "*"
    },
    lazy_load = true,
  }
})

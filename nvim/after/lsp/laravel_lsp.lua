return {
  cmd = { 'laravel-lsp' },
  filetypes = { 'php', 'blade' },
  root_markers = { 'artisan', 'composer.json' },
  on_init = function()
    vim.notify('laravel-lsp iniciado', vim.log.levels.INFO)
  end,
}

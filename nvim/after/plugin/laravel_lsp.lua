---@type vim.lsp.Config
vim.lsp.config("laravel_lsp", {
    cmd = { "/home/apokdev/.config/composer/vendor/bin/laravel-lsp" },
    filetypes = { "php", "blade" },
    root_markers = { "artisan", "composer.json", ".git" },
})

vim.lsp.enable("laravel_lsp")

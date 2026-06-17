local gh = require('utils').gh

vim.pack.add({
  gh 'JavaHello/spring-boot.nvim',
  gh 'MunifTanjim/nui.nvim',
  gh 'mfussenegger/nvim-dap',
  gh 'nvim-java/nvim-java'
})

require('java').setup({
  jdk = {
    auto_install = false
  }
})

vim.lsp.enable('jdtls')
vim.lsp.config('jdtls', {
  settings = {
    java = {
      configuration = {
        runtimes = {
          {
            name = "java",
            path = "/usr/lib/jvm/default",
            default = true,
          },
          {
            name = "java 26",
            path = "/usr/lib/jvm/java-26-openjdk",
            default = true,
          },
          {
            name = "java 21",
            path = "/usr/lib/jvm/java-21-openjdk",
            default = true,
          },
        }
      }
    }
  }
})

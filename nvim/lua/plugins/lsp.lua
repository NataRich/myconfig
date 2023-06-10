require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "gopls", "clangd", "tsserver",
  "cmake", "jedi_language_server", "dockerls",
  "docker_compose_language_service"}
})

local capabilities =  require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup {
  capabilities = capabilities,
}

require('lspconfig').gopls.setup {
  capabilities = capabilities
}

require('lspconfig').clangd.setup {
  capabilities = capabilities
}

require('lspconfig').tsserver.setup {
  capabilities = capabilities
}

require('lspconfig').cmake.setup {
  capabilities = capabilities
}

require('lspconfig').jedi_language_server.setup {
  capabilities = capabilities
}

require('lspconfig').dockerls.setup {
  capabilities = capabilities
}

require('lspconfig').docker_compose_language_service.setup {
  capabilities = capabilities
}

return {
  { "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "neocmake"},
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local caps = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        capabilities = caps
      })
      lspconfig.clangd.setup({
        capabilities = caps
      })
      lspconfig.neocmake.setup({
        capabilities = caps
      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}

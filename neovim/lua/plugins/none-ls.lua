return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local sources = {
      null_ls.builtins.formatting.clang_format.with({
        extra_args = { "--style=file:/home/eremeev/Neovim/clang_format" }
      }),
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.cmake_format,
    }
    null_ls.setup({
      soruces = sources
    })
    vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format, {})
  end
}

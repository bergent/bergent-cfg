return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({})
    vim.keymap.set('n', '<leader><CR>', ':ToggleTerm size=40 dir=${vim.loop.cwd} direction=horizontal<CR>', {})
  end
}

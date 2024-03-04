return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local config = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', config.find_files, {})
      vim.keymap.set('n', '<leader>fg', config.live_grep, {})
    end
  },

  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup({
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {}
        }
      })

      require("telescope").load_extension("ui-select")
    end
  }
}

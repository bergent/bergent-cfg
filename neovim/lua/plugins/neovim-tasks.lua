return {
  'Shatur/neovim-tasks',
  config = function()
    local Path = require('plenary.path')
    require('tasks').setup({
      default_params = {                                                         -- Default module parameters with which `neovim.json` will be created.
        cmake = {
          cmd = 'cmake',                                                         -- CMake executable to use, can be changed using `:Task set_module_param cmake cmd`.
          build_dir = tostring(Path:new('{cwd}', 'build', '{build_type}')), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values. Could be a function that return the path to the build directory.
          build_type = 'Debug',                                                  -- Build type, can be changed using `:Task set_module_param cmake build_type`.
          dap_name = 'lldb',                                                     -- DAP configuration name from `require('dap').configurations`. If there is no such configuration, a new one with this name as `type` will be created.
          args = {                                                               -- Task default arguments.
            configure = { '-D', 'CMAKE_EXPORT_COMPILE_COMMANDS=1', '-G', 'Ninja' }
          },
        },
      },
      save_before_run = true,      -- If true, all files will be saved before executing a task.
      params_file = 'neovim.json', -- JSON file to store module and task parameters.
      quickfix = {
        pos = 'botright',          -- Default quickfix position.
        height = 12,               -- Default height.
      },
    })
    vim.keymap.set('n', '<leader>cb', ':Task start cmake configure<CR>', {})
    vim.keymap.set('n', '<leader>ct', ':Task set_module_param cmake target<CR>', {})
    vim.keymap.set('n', '<leader>cq', ':Task set_module_param cmake build_type<CR>', {})
    vim.keymap.set('n', '<leader>cr', ':Task start cmake run ', {})
    vim.keymap.set('n', '<leader>cd', ':Task start cmake debug<CR>', {})
    vim.keymap.set('n', '<leader>cp', ':Task set_task_param cmake ', {})
    vim.keymap.set('n', '<leader>cs', ':Task cancel<CR>', {})
    vim.keymap.set('n', '<leader>cc', ':Task cancel<CR>', {})
  end
}

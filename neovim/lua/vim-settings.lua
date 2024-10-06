-- Tabulations
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")

-- Mapping
vim.g.mapleader = " "
vim.cmd(":map <up> <C-w><up>")
vim.cmd(":map <down> <C-w><down>")
vim.cmd(":map <left> <C-w><left>")
vim.cmd(":map <right> <C-w><right>")

-- etc.
vim.opt.termguicolors = true
vim.wo.relativenumber = true

-- git conflict
vim.keymap.set('n', '<leader>ro', ':GitConflictChooseOurs', {})
vim.keymap.set('n', '<leader>rt', ':GitConflictChooseTheir', {})
vim.keymap.set('n', '<leader>rb', ':GitConflictChooseBoth', {})
vim.keymap.set('n', '<leader>rn', ':GitConflictChooseNone', {})
vim.keymap.set('n', '<leader>rc', ':GitConflictNextConflict', {})
vim.keymap.set('n', '<leader>Rc', ':GitConflictPrevConflict', {})

-- Neogit 
vim.keymap.set('n', '<leader>gi', ':Neogit<CR>', {})

-- Russian keyboard 
vim.cmd('set keymap=russian-jcukenwin')
vim.cmd('set iminsert=0')
vim.cmd('set imsearch=0')
vim.cmd('highlight lCursor guifg=NONE guibg=Cyan')
vim.cmd('setlocal spell spelllang=ru_yo,en_us')

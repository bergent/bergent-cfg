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
vim.cmd("set background=light")

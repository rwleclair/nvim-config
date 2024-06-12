o = vim.opt
lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end


require('nerdtree')
require('fzf')
require('coc')
require('global-var')
require('plugin-init')
require('tree-sitter')

vim.o.background = "dark"
vim.cmd([[ colorscheme neofusion ]])


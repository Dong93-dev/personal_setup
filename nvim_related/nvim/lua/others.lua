local map = require('utils').map

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent =true



vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.smarttab = true
vim.opt.softtabstop=4
vim.opt.mouse='a'
vim.opt.autoread = true
vim.opt.encoding='utf-8' 

-- ------------------------------------
-- colorscheme
vim.cmd('colorscheme tokyonight')


-- ------------------------------------
-- python
vim.g.python3_host_prog = '/Users/dongzhou/miniconda3/envs/nvim/bin/python'

-- ------------------------------------
-- VIM
-- make nerdtree and terminal loaded when opening 
vim.api.nvim_create_autocmd({'VimEnter'}, {command=":NERDTree | :wincmd l"})



map('n', '<Esc>', ':noh<CR>')


vim.opt.splitright = true -- new vertical splits are on the right

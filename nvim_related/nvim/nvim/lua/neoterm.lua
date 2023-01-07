local map = require('utils').map
vim.g['neoterm_default_mod'] = 'belowright'
vim.g['neoterm_size'] = 10

map('t', '<Esc>', '<C-\\><C-n>', opts)
map('n', '<F7>', ':Ttoggle<CR>')

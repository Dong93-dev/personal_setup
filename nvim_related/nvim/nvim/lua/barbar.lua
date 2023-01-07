local map = require('utils').map

-- Move to previous/next
map('n', '≤', '<Cmd>BufferPrevious<CR>')
map('n', '≥', '<Cmd>BufferNext<CR>')
-- Re-order to previous/next
map('n', '¯', '<Cmd>BufferMovePrevious<CR>')
map('n', '˘', '<Cmd>BufferMoveNext<CR>')
-- -- Goto buffer in position...
-- map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
-- map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
-- map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
-- map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
-- map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
-- map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
-- map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
-- map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
-- map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
-- map('n', '<A-0>', '<Cmd>BufferLast<CR>')
-- -- Pin/unpin buffer
-- map('n', '<A-p>', '<Cmd>BufferPin<CR>')

-- Close buffer
map('n', 'ç', '<Cmd>BufferClose<CR>')

-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
--
--
--
--
-- -- Magic buffer-picking mode
-- map('n', '<C-p>', '<Cmd>BufferPick<CR>')
-- -- Sort automatically by...
-- map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>')
-- map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>')
-- map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>')
-- map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>')

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

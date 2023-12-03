local keymap = vim.keymap

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>','gg<S-v>G')

-- Split window
keymap.set('n', 'g[', ':vsplit<Return><C-w>w', {silent = true})
keymap.set('n', 'g]', ':split<Return><C-w>w', {silent = true})

-- Move window
keymap.set('n', 'gh', '<C-w>h')
keymap.set('n', 'gj', '<C-w>j')
keymap.set('n', 'gk', '<C-w>k')
keymap.set('n', 'gl', '<C-w>l')

-- Resize window
keymap.set('n', 'rh', '<C-w><')
keymap.set('n', 'rj', '<C-w>-')
keymap.set('n', 'rk', '<C-w>+')
keymap.set('n', 'rl', '<C-w>>')

-- Original
keymap.set('i', '<C-j>', '<esc>')
keymap.set('i', '<C-p>', '<Up>')
keymap.set('i', '<C-n>', '<Down>')
keymap.set('i', '<C-b>', '<Left>')
keymap.set('i', '<C-f>', '<Right>')
keymap.set('i', '<C-e>', '<End>')
keymap.set('i', '<C-a>', '<Home>')
keymap.set('i', '<C-k>', '<esc>lc$')
keymap.set('v', '<C-j>', '<esc>')
keymap.set('n', '<C-e>', '<End>')
keymap.set('n', '<C-a>', '<Home>')

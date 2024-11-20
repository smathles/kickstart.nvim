--  _  __
-- | |/ /___ _  _ _ __  __ _ _ __ ___
-- | ' </ -_) || | '  \/ _` | '_ (_-<
-- |_|\_\___|\_, |_|_|_\__,_| .__/__/
--           |__/           |_|

local opts = { noremap = true, silent = true }

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a nicer shortcut
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Buffers
vim.keymap.set('n', '<leader><Tab>', ':bnext<CR>') -- Next buffer with leader + Tab
vim.keymap.set('n', '<leader><S-Tab>', ':bprevious<CR>') -- Previous buffer with leader + Shift + Tab
vim.keymap.set('n', '<A-Tab>', ':bnext<CR>') -- Next buffer with Alt + Tab
vim.keymap.set('n', '<A-S-Tab>', ':bprevious<CR>') -- Previous buffer with Alt + Shift + Tab
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = 'Next buffer' }) -- Next buffer with leader + b + n
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { desc = 'Previous buffer' }) -- Previous buffer with leader + b + p
vim.keymap.set('n', '<leader>bx', ':bdelete!<CR>', { desc = 'Close buffer' }) -- Close buffer with leader + b + x
vim.keymap.set('n', '<leader>ba', '<cmd> enew <CR>', { desc = 'New buffer' }) -- New buffer with leader + b + a

-- Add in shift+tab to dedent lines in insert mode
vim.keymap.set('i', '<S-Tab>', '<C-\\><C-N><<<C-\\><C-N>^i')

-- Add ctrl+backspace to delete word in insert mode (heretic)
vim.keymap.set('i', '<C-BS>', '<C-w>', { noremap = true, silent = true })

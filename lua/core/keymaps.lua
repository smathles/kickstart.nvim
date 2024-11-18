--  _  __
-- | |/ /___ _  _ _ __  __ _ _ __ ___
-- | ' </ -_) || | '  \/ _` | '_ (_-<
-- |_|\_\___|\_, |_|_|_\__,_| .__/__/
--           |__/           |_|

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

-- Add in shift+tab to dedent lines in insert mode
vim.keymap.set('i', '<S-Tab>', '<C-\\><C-N><<<C-\\><C-N>^i')

-- Add ctrl+backspace to delete word in insert mode (heretic)
vim.keymap.set('i', '<C-BS>', '<C-w>', { noremap = true, silent = true })

-- [[ Keymap ]]
-- See `:help Key`, v_Key, x_Key, i_Key for builtin and `:verbose map Key` for user mapped keys

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Netrw
vim.keymap.set('n', '<leader>e', '<CMD>Explore<CR>', { desc = 'Open Netrw' })

-- Copying the VSCode behaviour of making tab splits
vim.keymap.set('n', '<C-\\>', '<CMD>vsplit<CR>')
vim.keymap.set('n', '<A-\\>', '<CMD>split<CR>')

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
vim.keymap.set('n', '<C-j>', '<CMD>move .+1<CR>')
vim.keymap.set('n', '<C-k>', '<CMD>move .-2<CR>')
vim.keymap.set('x', '<C-j>', ":move '>+1<CR>gv=gv")
vim.keymap.set('x', '<C-k>', ":move '<-2<CR>gv=gv")

-- Mimic shell movements in insert mode
-- Overrides 'insert the character from below the cursor'
-- vim.keymap.set('i', '<C-E>', '<C-o>$')
-- Overrides 'insert previously inserted text'
-- vim.keymap.set('i', '<C-A>', '<C-o>^')

-- Quickly save the current buffer or all buffers
vim.keymap.set('n', '<leader>w', '<CMD>update<CR>')
vim.keymap.set('n', '<leader>W', '<CMD>wall<CR>')

-- Quit neovim like other unix programs
vim.keymap.set('n', '<C-Q>', '<CMD>q<CR>')

-- leader-o/O inserts blank line below/above
vim.keymap.set('n', '<leader>o', 'o<ESC>')
vim.keymap.set('n', '<leader>O', 'O<ESC>')

-- Diagnostic keymaps
vim.keymap.set(
  'n',
  '[d',
  vim.diagnostic.goto_prev,
  { desc = 'Go to previous diagnostic message' }
)
vim.keymap.set(
  'n',
  ']d',
  vim.diagnostic.goto_next,
  { desc = 'Go to next diagnostic message' }
)
vim.keymap.set(
  'n',
  '<leader>q',
  vim.diagnostic.setloclist,
  { desc = 'Open diagnostics list' }
)

--[[
-- From numToStr
-- Fix * (Keep the cursor position, don't move to next match)
vim.keymap.set('n', '*', '*N')

-- Fix n and N. Keeping cursor in center
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')

-- Shortcut to yank register
vim.keymap.set({ 'n', 'x' }, '<leader>p', '"0p')

-- Move to the next/previous buffer
vim.keymap.set('n', '<leader>[', '<CMD>bp<CR>')
vim.keymap.set('n', '<leader>]', '<CMD>bn<CR>')

-- Move to last buffer
vim.keymap.set('n', "''", '<CMD>b#<CR>')

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
vim.keymap.set('o', 'A', ':<C-U>normal! mzggVG<CR>`z')
vim.keymap.set('x', 'A', ':<C-U>normal! ggVG<CR>')
--]]

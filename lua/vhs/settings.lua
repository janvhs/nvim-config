-- [[ Settings ]]
-- See `:help lua-vimscript`
-- Or
--   See `:help vim.o`
--   See `:help vim.wo`
--   See `:help vim.g`

-- Map <leader> to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Number of screen lines to keep above and below the cursor
vim.o.scrolloff = 8

-- How many characters line-numbers will take up
-- vim.o.numberwidth = 4

-- Highlight the line where the cursor is located
vim.o.cursorline = true

-- Put space when pressing <TAB>
-- vim.o.expandtab = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
-- See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn (left to line-numbers) on by default
-- vim.wo.signcolumn = 'yes' -- Supports size, too: "yes:2"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Use more colours
vim.o.termguicolors = true

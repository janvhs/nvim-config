-- [[ Settings ]]
-- See `:help lua-vimscript`
-- Or
--   See `:help vim.o`
--   See `:help vim.wo`
--   See `:help vim.g`

-- Map <leader> to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Enable spell checking
vim.opt.spelllang = 'en_gb'
vim.opt.spell = true

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Number of screen lines to keep above and below the cursor
vim.o.scrolloff = 8

-- Disable word wrap
vim.o.wrap = false

-- Better buffer splitting
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.smoothscroll = true

-- How many characters line-numbers will take up
-- vim.o.numberwidth = 4

-- Highlight the line where the cursor is located
vim.o.cursorline = true

-- Use 4 spaces to display '\t'
vim.o.tabstop = 4
-- vim.o.softtabstop = 4
vim.o.shiftwidth = 4
-- Put space when pressing <TAB>
vim.o.expandtab = false
-- TODO: enable smarttab

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

-- Use better colors
vim.o.termguicolors = true

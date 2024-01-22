local plugins = {
  {
    -- [[ UI Plugins ]]
    {
      -- Rose Pine Theme
      'rose-pine/nvim',
      name = 'rose-pine',
      variant = 'moon',
      priority = 1000,
    },
    {
      -- Statusline (bottom)
      'nvim-lualine/lualine.nvim',
    },
    {
      -- Show which key is bound to which function
      'folke/which-key.nvim',
    },
  },
  {
    -- [[ Editing Plugins ]]
    {
      -- Detect tabstop and shiftwidth automatically
      'tpope/vim-sleuth',
    },
    {
      -- Add indentation guides even on blank lines
      'lukas-reineke/indent-blankline.nvim',
      main = 'ibl',
    },
    {
      -- "gc" to comment visual regions/lines
      'numToStr/Comment.nvim',
    },
    {
      -- Highlight, edit, and navigate code
      'nvim-treesitter/nvim-treesitter',
      dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
      },
      build = ':TSUpdate',
    },
  },
  {
    -- [[ LSP and Autocompletion Plugins ]]
    {
      -- LSP configuration
      'neovim/nvim-lspconfig',
      dependencies = {
        -- Status updates from the LSP
        'j-hui/fidget.nvim',
        -- Additional lua configuration
        'folke/neodev.nvim',
      },
    },
    {
      -- Autocompletion
      'hrsh7th/nvim-cmp',
      dependencies = {
        -- Snippet Engine & its associated nvim-cmp source
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        -- Adds LSP completion capabilities
        'hrsh7th/cmp-nvim-lsp',
        -- Other completion plugins
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
      },
    },
  },
}

return plugins

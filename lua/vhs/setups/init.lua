-- [[ Configure all plugins ]]
require 'vhs.setups.theme'
require 'vhs.setups.which_key'
require 'vhs.setups.treesitter'
require 'vhs.setups.lualine'
require 'vhs.setups.comment'

-- Needs treesitter to be set up
require 'vhs.setups.ibl'

require 'vhs.setups.luasnip'
require 'vhs.setups.cmp'
require 'vhs.setups.neodev'
require 'vhs.setups.fidget'

-- Needs at least luasnip and cmp
-- TODO: Setup LSP
require 'vhs.setups.lsp'

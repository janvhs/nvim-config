vim.loader.enable()

-- [[ Utils ]]
function DP(...)
  local args = { n = select('#', ...), ... }
  for i = 1, args.n do
    args[i] = vim.inspect(args[i])
  end
  print(unpack(args))
end

-- [[ Pre Plugin ]]
require 'vhs.settings'
require 'vhs.autocmd'

require 'vhs.lazy'
require('lazy').setup 'vhs.plugins'

-- [[ Post Plugin ]]
require 'vhs.setups'
require 'vhs.keybindings'

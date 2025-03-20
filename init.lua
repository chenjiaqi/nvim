if vim.g.vscode then
  require('keybindings-vs')
  require('basic-vs')
else
  require('basic')
  require('keybindings')
  require('plugins')
  require('colorscheme')
  require('plugin-config/nvim-tree')
  require('plugin-config/bufferline')
  require('plugin-config/lualine')
  require('plugin-config/telescope')
  require('plugin-config/nvim-treesitter')
  require("plugin-config.toggleterm")
  require('lsp/setup')
  require('lsp/cmp')
  require('lsp/formatter')
  
  require('customer/custom_commands')
end


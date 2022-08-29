-- 插件管理文件
--
--
local packer = require('packer')

packer.startup({
  function(use)
   -- Packer 可以管理自己本身
   use 'wbthomason/packer.nvim'
   -- 你的插件列表...
   -- 主题
   use("folke/tokyonight.nvim")
   -- nvim-tree
   use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
   -- buffer line 标签页
   use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
  end,


  --[[
  config = {
    display = {
      open_fn = function()
          return require("packer.util").float({ border = "single" })
      end,
    },
  }
  --]]
})

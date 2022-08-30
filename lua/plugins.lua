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

   -- lua line 标签页
   use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
   use("arkav/lualine-lsp-progress")

   -- 模糊搜索软件
   use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
   -- 代码配色插件
   use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

   -- 终端
   use({ "akinsho/toggleterm.nvim" })

   --------------------- LSP --------------------
   use("williamboman/nvim-lsp-installer")
   -- Lspconfig
   use("neovim/nvim-lspconfig")

   use("folke/lua-dev.nvim")
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

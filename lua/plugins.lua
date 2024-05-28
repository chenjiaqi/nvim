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
   use({ "akinsho/bufferline.nvim", tag ="*", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye"}})

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
   use("folke/neodev.nvim")

   -- 代码补全
   use("hrsh7th/nvim-cmp")
   -- snippet 引擎
   use("hrsh7th/vim-vsnip")
   -- 补全源
   use("hrsh7th/cmp-vsnip")
   use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
   use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
   use("hrsh7th/cmp-path") -- { name = 'path' }
   use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

   -- 常见编程语言代码段
   use("rafamadriz/friendly-snippets")
   -- UI 增强
   use("onsails/lspkind-nvim")
   use("tami5/lspsaga.nvim")

   -- 代码格式化工具
   use("mhartington/formatter.nvim")

   -- 代码格式化工具
   use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

   -- latex
   use("lervag/vimtex")

   -- 注释生成
   use({"danymat/neogen",
      requires = "nvim-treesitter/nvim-treesitter",
      config = function()
        require('neogen').setup {
          languages = {
          ['cpp.doxygen'] = require('neogen.configurations.cpp')
        }
    }
      end,
      -- Uncomment next line if you want to follow only stable versions
      -- tag = "*"
    })

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

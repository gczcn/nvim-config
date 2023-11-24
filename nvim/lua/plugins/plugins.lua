local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  --扩展管理插件基础
  use { 'wbthomason/packer.nvim' }

  --主题插件, "用处不大" 的外观插件
  use { 'ellisonleao/gruvbox.nvim' }
  use { 'Mofiqul/vscode.nvim' }
  use
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  }
  use { "fneu/breezy" }
  use { "kaicataldo/material.vim" }
  use { 'srcery-colors/srcery-vim', as = 'srcery' }
  use { 'gen740/SmoothCursor.nvim',
    config = function()
      require('smoothcursor').setup()
    end
  }

  --滚动条
  use("petertriho/nvim-scrollbar")

  --选择高亮增强
  use({
    "utilyre/sentiment.nvim",
    tag = "*",
    config = function()
      require("sentiment").setup({
        -- config
      })
    end,
  })

  --代码运行
  use { 'thinca/vim-quickrun' }

  --在已有tab或buffers之间切换,并提供语言提示图标

  use({
    "ghillb/cybu.nvim",
    branch = "main",                                                       -- timely updates
    -- branch = "v1.x", -- won't receive breaking changes
    requires = { "nvim-tree/nvim-web-devicons", "nvim-lua/plenary.nvim" }, -- optional for icon support
    config = function()
      local ok, cybu = pcall(require, "cybu")
      if not ok then
        return
      end
      cybu.setup()
      vim.keymap.set("n", "K", "<Plug>(CybuPrev)")
      vim.keymap.set("n", "J", "<Plug>(CybuNext)")
      vim.keymap.set({ "n", "v" }, "<c-s-tab>", "<plug>(CybuLastusedPrev)")
      vim.keymap.set({ "n", "v" }, "<c-tab>", "<plug>(CybuLastusedNext)")
    end,
  })

  --自动改变相对行号开启状态
  use { "sitiom/nvim-numbertoggle" }

  --高级状态栏
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  --nvim文件树
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  --buffer-tab插件
  use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }


  --高亮代码显示增强 & 部分扩展基础
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  --下方为需使用其的扩展(可能是吧(bushi)
  --分级括号颜色(不确定是否生效)
  use 'HiPhish/rainbow-delimiters.nvim'
  --空白字符缩进线
  use "lukas-reineke/indent-blankline.nvim"
  --end()

  --超级补全插件
  use { 'neoclide/coc.nvim', branch = 'release' }

  --终端增强
  use 'skywind3000/vim-terminal-help'

  --启动页面定制
  use {
    "startup-nvim/startup.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require("startup").setup({ theme = "dashboard" }) -- put theme name here
    end
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)

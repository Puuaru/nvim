return require('packer').startup(
  function(use)

    -- Packer插件安装器
    use {'wbthomason/packer.nvim'}

    use { 'yianwillis/vimcdoc', event = 'VimEnter' }

    require('plugin-config.nvim-tree').config()
    use {
      "kyazdani42/nvim-tree.lua",
      requires = 'kyazdani42/nvim-web-devicons',
      config = "require('plugin-config/nvim-tree').setup()",
      cmd = {'NvimTreeToggle', 'NvimTreeFindFileToggle'}
    }

    -- 多tag
    use {
      "akinsho/bufferline.nvim",
      requires = 'kyazdani42/nvim-web-devicons',
      config = "require('plugin-config/bufferline')"
    }

    -- 语法高亮
    use {
      "nvim-treesitter/nvim-treesitter",
      run = ':TSUpdate',
      config = "require('plugin-config/nvim-treesitter')"
    }

    -- nvim-autopairs, 括号匹对
    use {
      "windwp/nvim-autopairs",
      config = "require('plugin-config/nvim-autopairs')"
    }

    require('plugin-config.vim-floaterm').config()
    use {
      "voldikss/vim-floaterm"
    }

    -- comment, 快速注释
    use {
        "numToStr/Comment.nvim",
        config = "require('plugin-config/comment')"
        -- config = function()
        --   require("Comment").setup()
        -- end,
      }

    -- Snippet 引擎
    use {
      "hrsh7th/vim-vsnip",
    }

    -- coc作为补全系统
    require('plugin-config.coc').config()
    use {'neoclide/coc.nvim', branch = 'release'}

    -- fzf 文件搜索
    require('plugin-config.fzf').config()
    use { 'junegunn/fzf' }
    use {
      'junegunn/fzf.vim',
      -- run = 'cd ~/.fzf && ./install -all',
      after = "fzf"
    }

    -- themes
    use {
      'folke/tokyonight.nvim',
    }

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      config = "require('plugin-config/nvim-lualine').setup()"
    }
  end
)


require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    -- Autocompletion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'saadparwaiz1/cmp_luasnip'

    use 'Raimondi/delimitMate'
    -- Snippets
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    use({
        "iamcco/markdown-preview.nvim",
        run = function(vim) vim.fn["mkdp#util#install"]() end,
    })

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.3',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function ()
            require('lualine').setup()
        end
    }

    use 'nvim-tree/nvim-web-devicons'
    -- use {
    --   'glepnir/dashboard-nvim',
    --   event = 'VimEnter',
    --   config = function()
    --     -- require('dashboard').setup {
    --     --   -- config
    --     -- }
    --   end,
    --   -- requires = {'nvim-tree/nvim-web-devicons'}
    -- }
    use {'akinsho/bufferline.nvim', tag = "v3.*"}
    -- needs more configuration
    -- use 'loctvl842/monokai-pro.nvim'
    use 'folke/tokyonight.nvim'
    -- use "water-sucks/darkrose.nvim"
    use 'ap/vim-css-color'
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    -- use "lukas-reineke/indent-blankline.nvim"
end)


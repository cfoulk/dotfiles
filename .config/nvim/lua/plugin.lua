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

    -- Snippets
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    use({
        "iamcco/markdown-preview.nvim",
        run = function(vim) vim.fn["mkdp#util#install"]() end,
    })
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function ()
            require('lualine').setup()
        end

    }
    -- needs more configuration
    use { 'loctvl842/monokai-pro.nvim',
    config = function ()
            require("monokai-pro").setup({
            })
        end
    }
    use 'ap/vim-css-color'
end)


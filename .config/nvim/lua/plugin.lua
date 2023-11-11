local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    'nvim-treesitter/nvim-treesitter',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'jose-elias-alvarez/null-ls.nvim',
    {
        'MunifTanjim/prettier.nvim',
        confing = function()
            local prettier = require("prettier")

            prettier.setup({
                bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
                filetypes = {
                    "css",
                    "graphql",
                    "html",
                    "javascript",
                    "javascriptreact",
                    "json",
                    "less",
                    "markdown",
                    "scss",
                    "typescript",
                    "typescriptreact",
                    "yaml",
                },
            })
        end
    },
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'saadparwaiz1/cmp_luasnip',
    'mfussenegger/nvim-jdtls',
    'Raimondi/delimitMate',
    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.3',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    'nvim-tree/nvim-web-devicons',
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("bufferline").setup()
        end
    },
    {
        'navarasu/onedark.nvim',
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'onedark'
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    'ap/vim-css-color',
    'tpope/vim-commentary',
    'tpope/vim-fugitive',
    'tpope/vim-surround',
}

local opts = {}

require("lazy").setup(plugins, opts)

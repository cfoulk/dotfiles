vim.opt.title = true
vim.opt.encoding = "utf-8"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10

vim.opt.expandtab =  true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.cmd([[colorscheme monokai-pro]])
vim.opt.termguicolors = true

vim.cmd([[hi CursorLineNr guifg=#ff6188]])
vim.opt.cursorline = true
--treesitter folding
--vim.opt.foldmethod = "expr"
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

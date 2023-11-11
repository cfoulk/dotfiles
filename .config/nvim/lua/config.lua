vim.opt.guicursor = ""

vim.opt.title = true
vim.opt.encoding = "utf-8"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.termguicolors = true

-- #ff6188 for pink monokai, #9854f1 tokyonight
vim.cmd([[hi CursorLineNr guifg=#9854f1]])
vim.opt.cursorline = true

-- insert mode different cursor
vim.opt.guicursor = 'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50'

--treesitter folding
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

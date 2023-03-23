vim.opt.guicursor = ""

vim.opt.title = true
vim.opt.encoding = "utf-8"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab =  true

vim.opt.smartindent = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.cmd([[colorscheme monokai-pro]])
--vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]]) --transparent bg
vim.opt.termguicolors = true

vim.cmd([[hi CursorLineNr guifg=#ff6188]])
vim.opt.cursorline = true
--treesitter folding
--vim.opt.foldmethod = "expr"
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

vim.api.nvim_create_autocmd("BufWritePost", { command = "!xrdb %", pattern = 'Xresources' })

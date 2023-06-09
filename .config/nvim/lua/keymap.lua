
-- key mapping
vim.g.mapleader = " "
local keymap = vim.keymap.set

-- Copy to clipboard
keymap("v", "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+yg_]])
keymap("n", "<leader>y", [["+y]])
keymap("n", "<leader>yy", [["+yy]])

-- Paste from clipboard
keymap("v", "<leader>p", [["+p]])
keymap("v", "<leader>P", [["+P]])
keymap("n", "<leader>p", [["+p]])
keymap("n", "<leader>P", [["+P]])

keymap("n", "J", "mzJ`z")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Move entire line up/down
keymap("n", "<C-Up>", "ddkP")
keymap("n", "<C-Down>", "ddp")

keymap("n", "<leader>u", ":E<CR>")

-- Moving within my buffer list
keymap("n", "H", ":bprevious<CR>")
keymap("n", "L", ":bnext<CR>")
keymap("n", "<leader>d", ":bdelete<CR>")

-- Auto close matching pairs
keymap("i", "(", "()<left>");
keymap("i", ")", "()");
keymap("i", "\"", "\"\"<left>");
keymap("i", "\'", "\'\'<left>");
keymap("i", "{", "{}<left><CR><ESC>O");
keymap("i", "}", "{  }<left><left>");
keymap("i", "[", "[]<left>");
keymap("i", "]", "[]");

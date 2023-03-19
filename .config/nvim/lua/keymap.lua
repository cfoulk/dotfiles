
-- key mapping
vim.g.mapleader = " "
local keymap = vim.keymap.set

-- Copy to clipboard
keymap("v", "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+yg_]])
keymap("n", "<leader>y", [["+y]])
keymap("n", "<leader>yy", [["+yy]])

--Paste from clipboard
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

keymap("n", "<C-Up>", "ddkP")
keymap("n", "<C-Down>", "ddp")


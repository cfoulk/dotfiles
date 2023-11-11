local keymap = vim.keymap.set
keymap("n", "<A-o>", require'jdtls'.organize_imports, {})
keymap("n", "crv", require('jdtls').extract_variable, {})
keymap("v", "crv", ":lua require('jdtls').extract_variable({ true })<cr>", {})
keymap("n", "crc", require('jdtls').extract_constant, {})
keymap("v", "crc", ":lua require('jdtls').extract_constant({ true })<cr>", {})
keymap("v", "crm", ":lua require('jdtls').extract_method({ true })<cr>", {})

local config = {
    cmd = {'/usr/share/java/jdtls/bin/jdtls'},
    -- cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls")},
    root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)

-- nnoremap <A-o> <Cmd>lua require'jdtls'.organize_imports()<CR>
-- nnoremap crv <Cmd>lua require('jdtls').extract_variable()<CR>
-- vnoremap crv <Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>
-- nnoremap crc <Cmd>lua require('jdtls').extract_constant()<CR>
-- vnoremap crc <Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>
-- vnoremap crm <Esc><Cmd>lua require('jdtls').extract_method(true)<CR>

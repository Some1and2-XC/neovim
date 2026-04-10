-- vim.lsp.set_log_level("debug")

-- vim.lsp.config["lua_ls"].setup = {
--     settings = {
--         Lua = {
--             diagnostics = {
--                 -- Get the language server to recognize the `vim` global
--                 globals = {'vim'},
--             },
--         },
--     },
-- }

vim.lsp.enable({
    "lua_ls",
    "eslint",
    "clangd",
    "rust_analyzer",
    "jdtls",
})

require("mini.snippets").setup()
require("mini.completion").setup()

local map_multistep = require('mini.keymap').map_multistep

map_multistep('i', '<Tab>',   { 'pmenu_next' })
map_multistep('i', '<S-Tab>', { 'pmenu_prev' })
-- map_multistep('i', '<CR>',    { 'pmenu_accept' })
map_multistep('i', '<CR>',    { 'pmenu_accept', 'minipairs_cr' })
map_multistep('i', '<BS>',    { 'minipairs_bs' })

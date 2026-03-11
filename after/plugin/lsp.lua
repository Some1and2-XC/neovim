-- vim.lsp.set_log_level("debug")

vim.lsp.config["lua_ls"].setup = {
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
        },
    },
}

vim.lsp.enable({
    "lua_ls",
    "eslint",
    "clangd",
    "rust_analyzer",
    "jdtls",
})

require("mini.snippets").setup()
require("mini.completion").setup()

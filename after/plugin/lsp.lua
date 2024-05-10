vim.lsp.set_log_level("debug")

local lsp = require("lsp-zero").preset({})

local eslint = require("eslint")
local null_ls = require("null-ls")
null_ls.setup()
eslint.setup({
    bin = "eslint",
    code_actions = {
        enable = true,
        apply_on_save = {
            enable = true,
            types = { "directive", "problem", "suggestion", "layout" },
        },
        disable_comment_rule = {
            enable = true,
            location = "separate_line",
        },
    },
    diagnostics = {
        enable = true,
        report_unused_disable_directives = false,
        run_on = "type",
    },

})

lsp.ensure_installed({
    "eslint",
    "pylsp",
    "rust_analyzer",
    "html",
    "cssls",
    "lua_ls",
})

require'lspconfig'.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
            	-- Get the language server to recognize the `vim` global
            	globals = {'vim'},
            },
        },
    },
}

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = {
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({select = false}),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    }
})

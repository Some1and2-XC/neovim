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
    "jdtls",
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

-- local jdtls_config = require("jdtls").start_or_attach({
--     cmd = {
--         --
--         "java",
--         "-Declipse.application=org.eclipse.jdt.ls.core.id1",
--         "-Dosgi.bundles.defaultStartLevel=4",
--         "-Declipse.product=org.eclipse.jdt.ls.core.product",
--         "-Dlog.protocol=true",
--         "-Dlog.level=ALL",
--         "-Xms1g",
--         "--add-modules=ALL-SYSTEM",
--         "--add-opens",
--         "java.base/java.util=ALL-UNNAMED",
--         "--add-opens",
--         "java.base/java.lang=ALL-UNNAMED",
--         "-jar",
--         -- this may need to be changed depending on the platform
--         "~/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher.gtk.linux.x86_64_1.2.1100.v20240722-2106.jar",
--         "-configuration", "~/.local/share/nvim/mason/packages/jdtls/config_linux",
--         "-data", "~/.local/share/nvim/java"
--     },
--     settings = {
--         java = {
--             signatureHelp = {enabled = true},
--             import = {enabled = true},
--             rename = {enabled = true}
--         }
--     },
--     init_options = {
--         bundles = {}
--     }
-- })
--
-- local pkg_status, jdtls = pcall(require, "jdtls")
--
-- if not pkg_status then
--     vim.notify("unable to load nvim-jdtls", "error")
--     return
-- end
--
-- jdtls.start_or_attach(jdtls_config)


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

local lspkind = require('lspkind')
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = {
        -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
        -- can also be a function to dynamically calculate max width such as
        -- menu = function() return math.floor(0.45 * vim.o.columns) end,
        menu = 50, -- leading text (labelDetails)
        abbr = 50, -- actual suggestion item
      },
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
      show_labelDetails = true, -- show labelDetails in menu. Disabled by default

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function (entry, vim_item)
        -- ...
        return vim_item
      end
    })
  }
}

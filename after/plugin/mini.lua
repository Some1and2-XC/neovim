require("mini.surround").setup()
require("mini.pairs").setup()
require("mini.comment").setup({
    mappings = {
        comment = "<C-/>",
        comment_line = "<C-/>",
        comment_visual = "<C-/>",
        textobject = "<C-/>",
    }
})
-- require("smear_cursor").setup({
--     smear_between_buffers = false,
--     smear_between_neighbor_lines = false,
--     scroll_buffer_space = true,
--     smear_insert_mode = false,
--     legacy_computing_symbols_support = false,
-- })


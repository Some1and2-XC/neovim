require("some1and2.set")
require("some1and2.remap")
require("some1and2.commands")


-- Sets Line Numbers
vim.cmd [[
    let g:netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'
    set nu rnu
    set ff=unix
]]

-- vim.cmd [[colorscheme desert]]
--vim.cmd [[colorscheme rose-pine-moon]]
vim.cmd [[colorscheme kanagawa]]
-- vim.g.lightline = { colorscheme = "tender"}
vim.cmd [[let g:airline_theme="term"]]

-- Defaults to D Drive (If it exists)
-- vim.cmd("e D:/")
vim.cmd("e E:/")

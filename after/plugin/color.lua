-- This is for making a transparent background in nvim
-- Doesn't work with terminals in windows so not worth using too much

function Colorify(color)

    color = color or "kanagawa"

    WithBackground(color)

    vim.cmd [[
        hi clear LineNr
        hi clear SignColor
        hi clear SignColumn
        hi clear CursorLineNr
        hi clear CursorLine
    ]]

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })

end

function WithBackground(color)

    color = color or "kanagawa"

    -- let g:airline_theme="seagull"
    vim.cmd [[

        let g:airline#extensions#fugitiveline#enabled = 1

        let g:airline_left_sep = "\ue0bc"
        let g:airline_right_sep = "\ue0b6"
        let g:airline_theme="term"
    ]]

    vim.cmd.colorscheme(color)

end

function UnColorify(color)

    color = color or "default"

    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "black" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "black" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "black" })
    vim.api.nvim_set_hl(0, "FloatTitle", { bg = "black" })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "black" })

    vim.cmd [[
        set statusline=
    ]]
end


if true then
    Colorify()
else
    UnColorify()
end

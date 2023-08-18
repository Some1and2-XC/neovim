-- This is for making a transparent background in nvim
-- Doesn't work with terminals in windows so not worth using too much

function colorify(color)

	color = color or "kanagawa"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })

end


colorify()

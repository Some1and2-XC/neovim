
local MiniMap = require("mini.map")

require("mini.map").setup({
	symbols = {
		-- encode = { ' ', '▌', '▐', '█', resolution = { row = 1, col = 2 } },
		-- encode = MiniMap.gen_encode_symbols.block("2x1"),
		encode = MiniMap.gen_encode_symbols.dot("4x2"),
		scroll_line = '█',
		scroll_view = '┃',
		-- scroll_view = ' ',
	},
	window = {
		focusable = false,
		side = "right",
		show_integration_count = false,
		width = 25,
		winblend = 0,
	}
})

vim.keymap.set("n", "<leader>mt", MiniMap.toggle)

-- MiniMap.open()
-- MiniMap.refresh()

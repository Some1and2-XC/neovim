
vim.keymap.set("n", "<leader>pv", vim.cmd.E)

-- Adds Ability to move things with J & K in select mode **Chef Kiss**
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Allows Yanks to also be added to the clipboard
-- vim.keymap.set("n", "<leader>y", "\"+y")
-- vim.keymap.set("v", "<leader>y", "\"+y")
-- vim.keymap.set("n", "<leader>Y", "\"+Y")

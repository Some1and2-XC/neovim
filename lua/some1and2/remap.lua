-- Goes to projects directory
-- vim.keymap.set("n", "<leader>projects", ":Ex /media/some1and2/T7<CR>")

-- Enters visual block with :Vb
vim.cmd("command! Vb normal! <C-v>")

-- Tab remove
vim.keymap.set("n", "<leader>trm", ":%s/\t/    /g<CR>")      -- Tab remove

vim.keymap.set("n", "<leader>tu", ":set noexpandtab<CR>")  -- Tab use
vim.keymap.set("n", "<leader>tU", ":set expandtab<CR>")    -- Tab Unuse
vim.keymap.set("n", "<leader>tt", ":set invlist<CR>")      -- Tab toggle

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pt", vim.cmd.Tex)

-- Color Shennanigans
vim.keymap.set("n", "<leader>cb", function() WithBackground() end, {noremap=true})
vim.keymap.set("n", "<leader>cs", function() Colorify() end, {noremap=true})
vim.keymap.set("n", "<leader>crm", function() UnColorify() end, {noremap=true})

-- ALlows for i + o to switch tabs
vim.keymap.set("n", "<C-i>", vim.cmd.tabp)
vim.keymap.set("n", "<C-o>", vim.cmd.tabn)

-- Adds Ability to move things with J & K in select mode **Chef Kiss**
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Allows Yanks to also be added to the clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

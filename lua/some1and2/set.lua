-- Fixes copy+paste stuff
vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
  },
  paste = {
    ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
    ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
  },
}


-- Status Line
vim.opt.showmode = false

-- Configures Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.cmd(":set expandtab")

vim.opt.smartindent = true

vim.opt.listchars = { tab = "───" }

-- Configures SWAP & UNDO dirs
vim.opt.swapfile = false
vim.opt.backup = false

-- os.getenv("APPDATA") .. "/.vim/undodir"
vim.opt.undodir = "~/.config/nvim/undodir"
vim.opt.undodir = "/srv/undodir"
vim.opt.undofile = true

-- removes selection after used
vim.opt.hlsearch = false
-- incremental searches
vim.opt.incsearch = true

vim.opt.wrap = false
vim.opt.scrolloff = 8

vim.opt.signcolumn = "yes"

-- vim.opt.termguicolors = true
vim.g.netrw_keepdir = false

vim.opt.updatetime = 0

vim.g.mapleader = " "

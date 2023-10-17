vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Styles
	use{"itchyny/lightline.vim", commit = "b1e91b4"} -- Sets the status line
	use{"rebelot/kanagawa.nvim", commit = "1749cea"} -- Sets the colorscheme
	use{"echasnovski/mini.map", commit = "2f35a59"}

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'} )
	use("nvim-treesitter/playground")

	use("mbbill/undotree")
	use("tpope/vim-fugitive")

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

end)

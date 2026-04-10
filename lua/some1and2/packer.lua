vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Styles
    -- use{"itchyny/lightline.vim", commit = "b1e91b4"} -- Sets the status line
    use { "vim-airline/vim-airline" } -- Sets the status line
    use { "vim-airline/vim-airline-themes" }
    use { "edkolev/promptline.vim" }
    use { "ryanoasis/vim-devicons" }

    -- Animated Cursor
    -- use "sphamba/smear-cursor.nvim" -- cool plugin but ruins performance.

    -- Color Scheme
    use {"rebelot/kanagawa.nvim", commit = "1749cea"} -- Sets the colorscheme

    -- Mini Map (`mt`)
    use { "echasnovski/mini.map", commit = "2f35a59" }

    -- Mini
    use { "nvim-mini/mini.nvim", branch = "stable" }

    -- Treesitter
    use{"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use{
        "nvim-treesitter/nvim-treesitter-textobjects",
        after = "nvim-treesitter",
        requires = "nvim-treesitter/nvim-treesitter",
        commit = "73e44f43c70289c70195b5e7bc6a077ceffddda4"
    }
    use("nvim-treesitter/playground")

    -- Autocomplete
    use {
        'neovim/nvim-lspconfig',
        requires = {
            -- LSP Support
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional
            -- use { "saghen/blink.cmp", branch = "v1", }

        }
    }

    -- Undo stuff
    use("mbbill/undotree")
    use("tpope/vim-fugitive")

    -- Adds pictograms for lsp
    use{"onsails/lspkind.nvim", commit = "d79a1c3"}

end)

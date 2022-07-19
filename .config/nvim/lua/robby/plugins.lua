return require('packer').startup{
	function()
	use 'wbthomason/packer.nvim'
	-- Harpoon Stuff
	use 'nvim-lua/plenary.nvim'
	use 'ThePrimeagen/harpoon'
	-- LSP
	use 'neovim/nvim-lspconfig'
	-- treesitter
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-treesitter/nvim-treesitter-context'
	use 'nvim-treesitter/nvim-treesitter-refactor'
	-- RUSTY BUSTY
	use 'simrat39/rust-tools.nvim'
	use 'mfussenegger/nvim-dap'
    -- GOTY FLOATY
    use 'ray-x/go.nvim'
	-- others
	use 'p00f/nvim-ts-rainbow'
	-- colorscheme
	use  "ellisonleao/gruvbox.nvim" 
    -- Telescoping
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- AutoComplete
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    -- Vsnip
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    use "nvim-telescope/telescope-fzy-native.nvim"
end
}

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])



vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
	    'nvim-telescope/telescope.nvim',
	    requires = {{'nvim-lua/plenary.nvim'}}
    }
	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    } 
	use 'nvim-treesitter/playground'
	use {
		"williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
	}
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
        } 
    }
    use {
        'lewis6991/gitsigns.nvim',
    }
    use "EdenEast/nightfox.nvim"
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'feline-nvim/feline.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    use "lukas-reineke/indent-blankline.nvim"
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use 'norcalli/nvim-colorizer.lua'
    use {
        "ray-x/lsp_signature.nvim",
    }
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use "rafamadriz/friendly-snippets"
 end
)
 

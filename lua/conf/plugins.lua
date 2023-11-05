vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  	use 'wbthomason/packer.nvim'
    use 'm4xshen/autoclose.nvim'

  	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.4',
  		requires =  {
            {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-file-browser.nvim'},
        }
	}
	use {
   		"mcchrish/zenbones.nvim",
    		requires = "rktjmp/lush.nvim"
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
            -- Mason setup
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end, 
        ft = { "markdown" },
    })


end)

vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
	use("wbthomason/packer.nvim") -- packer manage itself
	use("rebelot/kanagawa.nvim") -- colorscheme
	use("nvim-lualine/lualine.nvim") -- status line
	use("nvim-tree/nvim-web-devicons") -- icons
	use("lukas-reineke/indent-blankline.nvim") -- color identation
	use("folke/trouble.nvim") -- show problems whit the code
	use("folke/neodev.nvim") -- extended lib for neovim
	use("marko-cerovac/material.nvim") -- another colorscheme
	use("m4xshen/autoclose.nvim") -- autoclose (){}
	use("windwp/nvim-ts-autotag") -- HTML help
	use("nvim-treesitter/nvim-treesitter-context") -- treesitter plugin
	use("RRethy/vim-illuminate") -- resalt equals words
	use("stevearc/conform.nvim") -- format code
	use("folke/twilight.nvim") -- decolirezed unused code
	use("lewis6991/gitsigns.nvim") -- git sings changes
	use("sindrets/winshift.nvim") -- manage windows
	use("CRAG666/code_runner.nvim") -- Run code
	use("rafamadriz/friendly-snippets") -- snippets
	use("projekt0n/github-nvim-theme")

	use({ "michaelb/sniprun", run = "sh ./install.sh" }) -- Run parts of the code
	use({ "mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim" }) -- Another colorscheme
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) -- just treesitter

	use({
		"kkoomen/vim-doge",
		run = ":call doge#install()",
	})

	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                            , branch = '0.1.x',
		requires = {
			{
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope-file-browser.nvim",
			},
		},
	})

	use({
		"VonHeikemen/lsp-zero.nvim", -- lsp config
		branch = "v3.x",
		requires = {
			{ "williamboman/mason.nvim" }, -- Mason (LSP management)
			{ "williamboman/mason-lspconfig.nvim" }, -- Mason configuration
			{ "neovim/nvim-lspconfig" }, -- LSP config
			{ "hrsh7th/nvim-cmp" }, -- Autocomplenion
			{ "hrsh7th/cmp-nvim-lsp" }, -- LSP autocomplenion
			{ "L3MON4D3/LuaSnip" }, -- snips for LSP
		},
	})
	use({
		"iamcco/markdown-preview.nvim", -- markdown previow plugin
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})
end)

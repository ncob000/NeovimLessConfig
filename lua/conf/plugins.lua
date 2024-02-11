vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use("andreasvc/vim-256noir")
	use("amedoeyes/eyes.nvim")
	use("rebelot/kanagawa.nvim")
	use("Mofiqul/vscode.nvim")
	use("projekt0n/github-nvim-theme")
	use("marko-cerovac/material.nvim")
	use("owickstrom/vim-colors-paramount")
	-- use("romgrk/barbar.nvim")
	use("nvim-lualine/lualine.nvim") -- status line
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })

	use("nvim-tree/nvim-web-devicons") -- icons
	use("nvim-tree/nvim-tree.lua") -- file explorer
	use("lukas-reineke/indent-blankline.nvim") -- color identation
	use("folke/trouble.nvim") -- show problems whit the code
	use("folke/neodev.nvim") -- extended lib for neovim
	use("m4xshen/autoclose.nvim") -- autoclose (){}
	use("windwp/nvim-ts-autotag") -- HTML help
	use("nvim-treesitter/nvim-treesitter-context") -- treesitter plugin
	use("RRethy/vim-illuminate") -- resalt equals words
	use("stevearc/conform.nvim") -- format code

	use("lewis6991/gitsigns.nvim") -- git sings changes
	use("sindrets/winshift.nvim") -- manage windows
	use("CRAG666/code_runner.nvim") -- Run code
	use("rafamadriz/friendly-snippets") -- snippets
	use("ray-x/lsp_signature.nvim")
	use("ibhagwan/smartyank.nvim")
	use("nvim-telescope/telescope-frecency.nvim")

	use("ray-x/web-tools.nvim")
	use("dstein64/nvim-scrollview")
	use("Exafunction/codeium.vim")

	use({ "michaelb/sniprun", run = "sh ./install.sh" }) -- Run parts of the code
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim" }) -- Another colorscheme
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) -- just treesitter
	use({
		"jesseleite/nvim-noirbuddy",
		requires = { "tjdevries/colorbuddy.nvim", branch = "dev" },
	})
	use({
		"kkoomen/vim-doge",
		run = ":call doge#install()",
	})

	use({
		"gelguy/wilder.nvim",
		config = function()
			require("wilder").setup({ modes = { ":", "/", "?" } })
		end,
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
				"nvim-lua/popup.nvim",
				"xiyaowong/telescope-emoji.nvim",
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
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
			{ "L3MON4D3/LuaSnip" }, -- snips for LSP
			{ "saadparwaiz1/cmp_luasnip" },
		},
	})

	use({
		"nvimdev/lspsaga.nvim",
		after = "nvim-lspconfig",
		config = function()
			require("lspsaga").setup({})
		end,
	})
	use({
		"iamcco/markdown-preview.nvim", -- markdown previow plugin
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})

	use({
		"jakewvincent/mkdnflow.nvim",
		config = function()
			require("mkdnflow").setup({
				-- Config goes here; leave blank for defaults
			})
		end,
	})
end)

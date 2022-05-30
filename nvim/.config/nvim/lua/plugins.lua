return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'neovim/nvim-lspconfig',
		'williamboman/nvim-lsp-installer'
	}

	use {
		'hrsh7th/nvim-cmp', -- Autocompletion plugin
		'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
		'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
		'L3MON4D3/LuaSnip', -- Snippets plugin
		"rafamadriz/friendly-snippets",
		'windwp/nvim-autopairs', -- Auto Close Brackets
	}

	use {
		'nmac427/guess-indent.nvim',
		config = function() require('guess-indent').setup {} end,
	}

	use 'numToStr/Comment.nvim'

	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }

	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'p00f/nvim-ts-rainbow'

	use {
		"catppuccin/nvim",
		as = "catppuccin"
	}

end)

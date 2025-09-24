-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use {
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup()
		end
	}

	use({ "nvim-treesitter/nvim-treesitter", run = ':TSUpdate' })

	use("theprimeagen/harpoon")

	use("neovim/nvim-lspconfig")

	use("mason-org/mason.nvim")

	use("mason-org/mason-lspconfig.nvim")

	use("preservim/nerdtree")

	use("github/copilot.vim")

	use("junegunn/goyo.vim")
	use("junegunn/limelight.vim")

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
end)

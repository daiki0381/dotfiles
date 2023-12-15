local status, packer = pcall(require, "packer")
if not status then
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	-- plugin manager
	use("wbthomason/packer.nvim")
	-- improve startup time
	use("lewis6991/impatient.nvim")
	-- color scheme
	-- use("folke/tokyonight.nvim")
	use("neanias/everforest-nvim")
	-- auto pairs
	use("windwp/nvim-autopairs")
	-- auto tag
	use("windwp/nvim-ts-autotag")
	-- auto end
	use("RRethy/nvim-treesitter-endwise")
	-- startup screen
	use({
		"goolord/alpha-nvim",
		requires = "nvim-tree/nvim-web-devicons",
	})
	-- status line
	use("hoob3rt/lualine.nvim")
	-- indent highlight
	use("lukas-reineke/indent-blankline.nvim")
	-- git
	use("dinhhuy258/git.nvim")
	use("lewis6991/gitsigns.nvim")
	-- tab
	use({
		"akinsho/bufferline.nvim",
		tag = "*",
		requires = "nvim-tree/nvim-web-devicons",
	})
	-- notice
	use({
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	})
	-- syntax highlight
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	-- fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = "nvim-lua/plenary.nvim",
	})
	-- filer
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
			{
				"s1n7ax/nvim-window-picker",
				version = "2.*",
			},
		},
	})
	-- LSP
	use({
		"williamboman/mason.nvim",
		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
	})
	-- LSP completion
	use({
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/vim-vsnip",
		"hrsh7th/cmp-vsnip",
		"onsails/lspkind.nvim",
	})
	-- LSP UI
	use("nvimdev/lspsaga.nvim")
	-- LSP linter/formatter
	use("jay-babu/mason-null-ls.nvim")
	use({
		"nvimtools/none-ls.nvim",
		requires = "nvim-lua/plenary.nvim",
	})
end)

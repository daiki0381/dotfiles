local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- plugin manager
  use 'wbthomason/packer.nvim'
  -- color scheme
  use 'folke/tokyonight.nvim'
  -- status line
  use 'hoob3rt/lualine.nvim'
  -- indent highlight
  use 'lukas-reineke/indent-blankline.nvim'
  -- LSP
  use {
    'williamboman/mason.nvim',
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim'
  }
  -- LSP completion
  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    "hrsh7th/cmp-cmdline",
    'hrsh7th/vim-vsnip',
    'hrsh7th/cmp-vsnip',
    'onsails/lspkind.nvim'
  }
end)

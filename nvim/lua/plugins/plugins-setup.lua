local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Automatically install/upgrade plugins when saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' },  -- optional
  }
  use 'christoomey/vim-tmux-navigator'  -- locate panes
  use 'nvim-treesitter/nvim-treesitter' -- syntax highlight
  use 'p00f/nvim-ts-rainbow' -- different bracket colors
  use { -- LSP
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig'
  }
  use { -- autocomplete
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets'
  }
  use 'numToStr/Comment.nvim' -- easy comments
  use 'windwp/nvim-autopairs' -- autocomplete parentheses
  use 'akinsho/bufferline.nvim' -- tab buffers
  use 'lewis6991/gitsigns.nvim' -- git signs
  use { -- global search
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

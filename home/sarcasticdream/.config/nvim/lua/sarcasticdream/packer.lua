-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use({ 
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  

--   use {
-- 	  'VonHeikemen/lsp-zero.nvim',
-- 	  branch = 'v2.x',
-- 	  requires = {
-- 		  -- LSP Support
-- 		  {'neovim/nvim-lspconfig'},             -- Required
-- 		  {'williamboman/mason.nvim'},           -- Optional
-- 		  {'williamboman/mason-lspconfig.nvim'}, -- Optional
-- 
-- 		  -- Autocompletion
-- 		  {'hrsh7th/nvim-cmp'},     -- Required
-- 		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
-- 		  {'L3MON4D3/LuaSnip'},     -- Required
-- 	  }
--   }

--   use ('hrsh7th/cmp-path')

  use {
	  'neoclide/coc.nvim',
	  branch = 'release',
  }

end)

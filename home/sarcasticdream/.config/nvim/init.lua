--[[
  _   _                 _           
 | \ | |               (_)          
 |  \| | ___  _____   ___ _ __ ___  
 | . ` |/ _ \/ _ \ \ / / | '_ ` _ \ 
 | |\  |  __/ (_) \ V /| | | | | | |
 \_| \_/\___|\___/ \_/ |_|_| |_| |_|
 
--]]

-- Grabs some stuff
require("sarcasticdream")

-- Source coc config
vim.api.nvim_command('source $HOME/.config/nvim/vconfs/coc.nvim')

-- Enable syntax highlighting
vim.api.nvim_command('syntax on')

-- Set the background to dark
vim.opt.background = 'dark'

-- Set listchars
vim.opt.listchars = { tab = '>-', trail = '-', extends = '>', precedes = '<' }

-- Set indentation settings
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Show line numbers
vim.opt.number = true

-- Disable swap and backup files
vim.opt.swapfile = false
vim.opt.backup = false

-- Set undo settings
vim.opt.undodir = '/home/sarcasticdream/.vim/undodir/'
vim.opt.undofile = true

-- Incremental search
vim.opt.incsearch = true

-- Disable highlighting of search matches in Vim
vim.o.hlsearch = false

-- Set cursorline
vim.opt.cursorline = true

-- Set mouse support
vim.opt.mouse = 'a'

-- Set relativenumber
vim.opt.relativenumber = true

-- Clipboard shiz
vim.opt.clipboard = 'unnamedplus'

-- Set modifiable option to enable buffer modifications
vim.o.modifiable = true

-- vim.cmd("au ColorScheme * hi Normal ctermbg=None")
vim.cmd("set statusline+=%F") 
vim.o.termguicolors = true
vim.cmd("colorscheme iceberg")

-- Allows Transparency with different themes
vim.api.nvim_command('highlight Normal guibg=NONE ctermbg=NONE')

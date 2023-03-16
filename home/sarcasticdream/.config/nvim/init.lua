--[[
  _   _                 _           
 | \ | |               (_)          
 |  \| | ___  _____   ___ _ __ ___  
 | . ` |/ _ \/ _ \ \ / / | '_ ` _ \ 
 | |\  |  __/ (_) \ V /| | | | | | |
 \_| \_/\___|\___/ \_/ |_|_| |_| |_|
 
--]]

-- Source vim-plug plugins
vim.api.nvim_command('source $HOME/.config/nvim/vim-plug/plugins.vim')

-- Source coc config
vim.api.nvim_command('source $HOME/.config/nvim/plug-config/coc.vim')

-- Enable syntax highlighting
vim.api.nvim_command('syntax on')

-- Set the colorscheme
vim.api.nvim_command('colorscheme substrata')

-- Map Esc to Ctrl-\
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

-- Set the background to dark
vim.opt.background = 'dark'

-- Set listchars
vim.opt.listchars = { tab = '>-', trail = '-', extends = '>', precedes = '<' }

-- Set indentation settings
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Show line numbers
vim.opt.number = true

-- Disable swap and backup files
vim.opt.swapfile = false
vim.opt.backup = false

-- Set undo settings
vim.opt.undodir = '~/.vim/undodir'
vim.opt.undofile = true

-- Incremental search
vim.opt.incsearch = true

-- Disable highlighting of search matches in Vim
vim.o.hlsearch = false

-- Set cursorline
vim.opt.cursorline = false

-- Set mouse support
vim.opt.mouse = 'a'

-- Set relativenumber
vim.opt.relativenumber = true

-- Map Tab to gt and Shift-Tab to gT
vim.api.nvim_set_keymap('n', '<Tab>', 'gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', 'gT', { noremap = true })

-- Create a new tab with Alt-t
vim.api.nvim_set_keymap('n', '<A-t>', ':tabnew<CR>', { noremap = true, silent = true })

-- Move to the next/previous tab with Alt-1/Alt-2
vim.api.nvim_set_keymap('n', '<A-1>', ':tabmove +<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-2>', ':tabmove -<CR>', { noremap = true, silent = true })


-- splitting
vim.api.nvim_set_keymap('n', '<C-o>', '<C-w>s', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-p>', '<C-w>v', { noremap = true })

-- Closing windows
vim.api.nvim_set_keymap('n', '<C-q>', '<C-w>c', { noremap = true })

-- Clipboard shiz
vim.opt.clipboard = 'unnamedplus'

-- Replace all shiz
vim.api.nvim_set_keymap('n', 'S', ':%s//g<Left><Left>', { noremap = true })

-- Allows Transparency with different themes
vim.api.nvim_command('highlight Normal guibg=NONE ctermbg=NONE')

-- Commenting blocks of code
vim.cmd([[
  augroup commenting_blocks_of_code
    autocmd!
    autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
    autocmd FileType sh,ruby,python   let b:comment_leader = '# '
    autocmd FileType lua              let b:comment_leader = '-- '
    autocmd FileType conf,fstab       let b:comment_leader = '# '
    autocmd FileType tex              let b:comment_leader = '% '
    autocmd FileType mail             let b:comment_leader = '> '
    autocmd FileType vim              let b:comment_leader = '" '
  augroup END
  noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\\/')<CR>/<CR>:nohlsearch<CR>
  noremap <silent> ,cu :<C-B>silent <C-E>s/^<C-R>=escape(b:comment_leader,'\\/')<CR>//e<CR>:nohlsearch<CR>
]])

-- NERD TREE
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true })
vim.g.webdevicons_enable_nerdtree = 1
vim.g.NERDTreeWinSize=27

-- Automatically mirror NERDTree when entering a new buffer/window
vim.cmd([[
  autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
]])

-- Set modifiable option to enable buffer modifications
vim.o.modifiable = true

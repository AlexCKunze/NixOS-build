source $HOME/.config/nvim/vim-plug/plugins.vim
:syntax on
colorscheme substrata
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let g:webdevicons_enable_nerdtree = 1
:tnoremap <Esc> <C-\><C-n>
set background=dark
:let g:NERDTreeWinSize=17
set listchars=tab:>-
set shiftwidth=4
set tabstop=4 softtabstop=4
set expandtab
filetype indent on
set autoindent
set smartindent
set nu
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nowrap
""inoremap " ""<left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
""inoremap { {}<left>
""inoremap {<CR> {<CR>}<ESC>O
""inoremap {;<CR> {<CR>};<ESC>O
""inoremap < <><left>
hi Normal guibg=NONE ctermbg=NONE
set nohlsearch
set mouse=a

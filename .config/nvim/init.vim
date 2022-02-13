source $HOME/.config/nvim/vim-plug/plugins.vim
:syntax on
colorscheme substrata
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
set number
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nowrap
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O
"inoremap < <><left>
hi Normal guibg=NONE ctermbg=NONE
set nohlsearch
set mouse=a
set relativenumber
" Tab
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <A-t> :tabnew<CR>
nnoremap <silent> <A-1> :tabmove +<CR>
nnoremap <silent> <A-2> :tabmove -<CR>

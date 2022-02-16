source $HOME/.config/nvim/vim-plug/plugins.vim
:syntax on
colorscheme substrata
map <C-n> :NERDTreeToggle<CR>
let g:webdevicons_enable_nerdtree = 1
:tnoremap <Esc> <C-\><C-n>
set background=dark
:let g:NERDTreeWinSize=19
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

" Commenting blocks of code.
augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType tex              let b:comment_leader = '% '
  autocmd FileType mail             let b:comment_leader = '> '
  autocmd FileType vim              let b:comment_leader = '" '
augroup END
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Navigating Tiled Stuff
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Clipboard shiz
set clipboard+=unnamedplus

" Replace all shiz
nnoremap S :%s//g<Left><Left>

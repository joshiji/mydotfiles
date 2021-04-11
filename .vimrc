
set encoding=UTF-8

set guifont=Source\ Code\ Pro\ Medium\ \Nerd\ Font\ Complete\ Mono\ 11
set guifont=SauceCodePro\ Nerd\ Font\ Mono\ Medium\ 12
"set noantialias
syntax enable
filetype indent on
filetype plugin on

set nu
set nocompatible

" Vim Plug 
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim'
Plug 'mhartington/oceanic-next'
Plug 'ryanoasis/vim-devicons'
call plug#end()


" NEDRTree related stuff
"
" Toggle keymap
nnoremap <C-t> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif



syntax on
set t_Co=256
set cursorline
colorscheme onehalflight
let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }


let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu


"colorscheme OceanicNext


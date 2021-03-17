set autoindent
set backspace=indent,eol,start
set backup
set cursorline
set expandtab     " Expand TABs to spaces
set history=500
set hlsearch      " highlight matches
set ignorecase
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set noantialias
set nobackup
set nocompatible  " Use Vim settings, rather then Vi settings
set noswapfile
set nowritebackup
set number
set numberwidth=2
set ruler         " show the cursor position all the time
set shiftwidth=2  " Indents will have a width of 4
set showcmd       " display incomplete commands
set smartcase
set softtabstop=2 " Sets the number of columns for a TAB
set splitright
set tabstop=2

" 80 char highlight
set cc=81
set textwidth=80
highlight ColorColumn ctermbg=8

" Theme and colors
set t_Co=256
set background=dark
colorscheme monochrome
set encoding=utf-8

" Airline
let g:airline_theme='jellybeans'
let g:airline_powerline_fonts = 1

" Frequenty used mappings
let mapleader = ","
vnoremap vv <esc>
inoremap vv <esc>
inoremap <esc> <nop>
vnoremap <esc> <nop>
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>
nnoremap <C-h> gT
nnoremap <C-l> gt

" Edit and source .vimrc quickly
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Replace under cursor
nnoremap <leader>z :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

" East goto beginning/end of the line
nnoremap H ^
nnoremap L $

" Remove search highlight with <C-L>.
nnoremap <silent> <C-m> :nohl<CR>

" Tab split
nnoremap <silent> <leader>ts :tab split<CR>

" paste
nnoremap <leader>tp :set paste!<CR>

" netrw
nnoremap <leader>e :Explore<CR>
nnoremap <leader>te :Texplore<CR>

" Toggle spell check
nnoremap <silent> <leader>sc :setlocal spell! spelllang=en_us<CR>

" Ctrl-P
let g:fuzzy_ignore = "*.pyc;coverage/**;"
let g:ctrlp_match_window = 'results:25' " Generate more search results
let g:ctrlp_working_path_mode = 0

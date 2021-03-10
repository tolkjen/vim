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
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
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
nnoremap <leader>pp :set paste!<CR>

" netrw
nnoremap <leader>e :Explore<CR>
nnoremap <leader>te :Texplore<CR>

" Toggle spell check
nnoremap <silent> <leader>sc :setlocal spell! spelllang=en_us<CR>

" Ctrl-P
let g:fuzzy_ignore = "*.pyc;coverage/**;"
let g:ctrlp_match_window = 'results:25' " Generate more search results
let g:ctrlp_working_path_mode = 0

" Code locations to index
let g:code_paths = []

" Silver Searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup
  let g:grep_cmd_opts = '--line-numbers --noheading'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag ' . join(g:code_paths, ' ') . ' -l -g ""'
  let g:ctrlp_use_caching = 1
endif

" Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep --silent'
endif

" Ag
function! s:MyAgFunc(...)
  let l:pattern = a:1
  " Setting shellpipe hides ag's stdout in terminal
  set shellpipe=>
  if a:0 == 1
    execute "Ack! " . l:pattern . " " . join(g:code_paths, " ")
  else
    let l:ext = a:2
    execute "Ack! -G " . l:ext . "$ " . l:pattern . " " . join(g:code_paths, " ")
  endif
  set shellpipe=2>&1\|tee
endfunction

command! -nargs=+ Ag call s:MyAgFunc(<f-args>)
nnoremap <leader>ss :Ag<space>

" Plugins
filetype plugin indent on

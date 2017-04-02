set autoindent
set backspace=indent,eol,start
set backup
set cursorline
set history=500
set hlsearch      " highlight matches
set ignorecase
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set noantialias
set nobackup
set nocompatible  " Use Vim settings, rather then Vi settings
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set nowritebackup
set number
set numberwidth=2
set ruler         " show the cursor position all the time
set shiftwidth=2
set showcmd       " display incomplete commands
set smartcase
set splitright
set tabstop=2
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

" 80 char highlight
set cc=81
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
nnoremap <C-n> <C-d>
nnoremap <C-i> <C-u>
nnoremap <C-h> gT
nnoremap <C-l> gt

" Copy and paste using X11 clipboard
vnoremap d "+d
nnoremap d "+d
vnoremap y "+y
nnoremap y "+y
vnoremap p "+p
nnoremap p "+p
nnoremap x "+x

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

" Toggle spell check
nnoremap <silent> <leader>sc :setlocal spell! spelllang=en_us<CR>

" NERDTree
nnoremap <C-\> :NERDTreeToggle<CR>
nnoremap <C-]> :NERDTreeFind<CR>
let g:NERDTreeWinSize=40

" Tagbar
nnoremap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" YCM
set completeopt=menuone
let g:ycm_add_preview_to_completeopt = 0
nnoremap <leader>j :YcmCompleter GoTo<CR>
hi Pmenu ctermbg=DarkGrey ctermfg=White
hi PmenuSel ctermbg=White ctermfg=DarkGrey

" Ctrl-P
let g:fuzzy_ignore = "*.pyc;coverage/**;"
let g:ctrlp_match_window = 'results:25' " Generate more search results
let g:ctrlp_working_path_mode = 0

" ctrlp-py-matcher
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Silver Searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup
  let g:grep_cmd_opts = '--line-numbers --noheading'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Plugins
filetype plugin indent on


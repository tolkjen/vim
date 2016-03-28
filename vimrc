set autoindent
set backspace=indent,eol,start
set backup
set history=500
set hlsearch      " highlight matches
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set nobackup
set nocompatible  " Use Vim settings, rather then Vi settings
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set nowritebackup
set number
set numberwidth=4
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set smartcase
set ignorecase
set noantialias
set splitbelow
set splitright

" Map <leader> to ,
let mapleader = ","

" Theme and colors
set t_Co=256
set background=dark
colorscheme monochrome
set encoding=utf-8

" Command aliases
cabbrev tp tabprev
cabbrev tn tabnext
cabbrev tf tabfirst
cabbrev tl tablast

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Remove search highlight with <C-L>.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Ctrl-P
let g:fuzzy_ignore = "*.pyc;coverage/**;"
let g:ctrlp_match_window = 'results:25' " Generate more search results

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Disable style checking
let g:syntastic_quiet_messages = { "type": "style" }

" NERDTree
map <C-\> :NERDTreeToggle<CR>
map <C-]> :NERDTreeFind<CR>

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

" YCM
set completeopt=menuone
let g:ycm_add_preview_to_completeopt = 0
nnoremap <leader>j :YcmCompleter GoTo<CR>
hi Pmenu ctermbg=DarkGrey ctermfg=White
hi PmenuSel ctermbg=White ctermfg=DarkGrey

" Plugins
filetype plugin indent on


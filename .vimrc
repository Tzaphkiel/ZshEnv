set background=dark
let g:zenburn_high_Contrast=1
colors zenburn
" :colorscheme pablo
syntax enable
set nocompatible
set encoding=utf8
"set modeline


set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab                                           " turn tab to space
set incsearch
set nowrap
set showcmd
set hlsearch
set ignorecase                                  " ignore case when searching
set ruler

set statusline=%F%m%r%h%w\ %=%y\ POS=%v,%l\/%L\ \ %p%%
set laststatus=2

filetype on
filetype plugin on
set nu

" Work-around incomplete terminfo databases                                     
" Particulalry useful when under `screen`, which may or may not be attached to  
" a physical terminal capable of 256color mode.                                 
"if match($TERMCAP, 'Co#256:') == 0 || match($TERMCAP, ':Co#256:') > 0           
    set t_Co=256                                                                
"endif 

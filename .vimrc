" terminal background must be #1f1f1f to match the zenburn background !
" Equivalent RGBs are BG: (34,34,34) with FG: (254,254,254)

set langmenu=en_US.utf-8
""set t_Co=256                                                                
""set nocompatible

""" solarized using pathogen autoload
set nocompatible                                           
set t_Co=256
call pathogen#infect()                                     
syntax on                                                  
set background=dark " dark | light "                       
colorscheme solarized                                      
filetype plugin on
""" solarized using pathogen autoload



""set background=dark
""let g:zenburn_alternate_Visual=1
""let g:zenburn_high_Contrast=1
""let g:zenburn_unified_CursorColumn = 1
"let g:zenburn_force_dark_Background = 1
""colors zenburn
""syntax enable
set encoding=utf-8
scriptencoding utf-8

set autoindent
set smartindent
set tabstop=2
set expandtab                                           " turn tab to space
set shiftwidth=2
set incsearch
set nowrap
set linebreak
set showbreak=>>>
set showmode
set showcmd
set smartcase
set hlsearch
set ignorecase                                  " ignore case when searching
set ruler
set ff=unix
set nu
set autochdir
set shortmess=atI
set scrolloff=3

set statusline=%F%m%r%h%w\ %=%y\ POS=%v,%l\/%L\ \ %p%%
set laststatus=2

" mouse wheel scrolling in the terminal
set ttymouse=xterm2

filetype plugin indent on

" highlight current line and column
set cursorline
set cursorcolumn
set display=lastline
set wildmenu
set noerrorbells

if has('gui_running')
  set clipboard=autoselect,unnamed
  if has('unix')
    if &diff
      set guifont=DejaVu\ Sans\ Mono\ 8 
    else
      set guifont=DejaVu\ Sans\ Mono\ 10
    endif
  else
    if &diff
      set guifont=DejaVu_Sans_Mono:h8 
    else
      set guifont=DejaVu_Sans_Mono:h10
    endif
    au GUIEnter * simalt ~X
  endif
endif

" use filler lines if one pane in the diff has new code
set diffopt+=filler
" ignore trailing whitespace
set diffopt+=iwhite








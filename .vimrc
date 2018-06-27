
set nocompatible

set encoding=utf-8
set ruler
set cursorline
set showmatch
set showcmd
set showmode
set title
set wildmenu

set confirm 
set fileencoding=utf-8 

set backspace=indent,eol,start 
set expandtab 
set nojoinspaces 
set shiftwidth=4 
set softtabstop=4 
set tabstop=4 
set textwidth=80 

set hlsearch 
set ignorecase 
set incsearch 
set smartcase 

filetype on " enable file type detection
filetype plugin on 
filetype indent on 
filetype plugin indent on
set background=dark " dark background for console
syntax enable 

" characters for displaying non-printable characters
set listchars=eol:$,tab:>-,trail:.,nbsp:_,extends:+,precedes:+

noremap n nzz
noremap N Nzz

nnoremap B ^    " go to the beginning of the file
nnoremap E $    " go to the end of the file

nnoremap gV `[v`]   " highlight last inserted text

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Enable backup
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" press F4 to fix indentation in whole file; overwrites marker 'q' position
noremap <F4> mqggVG=`qzz
inoremap <F4> <Esc>mqggVG=`qzza

" press F5 to sort selection or paragraph
vnoremap <F5> :sort i<CR>
nnoremap <F5> Vip:sort i<CR>

" press F8 to turn the search results highlight off
noremap <F8> :nohl<CR>
inoremap <F8> <Esc>:nohl<CR>a

" press F12 to toggle showing the non-printable charactes
noremap <F12> :set list!<CR>
inoremap <F12> <Esc>:set list!<CR>a

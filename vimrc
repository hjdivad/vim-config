let mapleader=","
let maplocalleader=","

call pathogen#infect()

runtime! vimrc.d/**.vim

set nocompatible
set modelines=5

" Put swap files out of the way
set directory=/var/tmp

set wildmode=list:longest

" Disable bells
set visualbell
set t_vb=

" Turn on line numbers
set nu

set ruler
" Always show status line
set laststatus=2


set diffopt=filler,iwhite,vertical



filetype on
filetype plugin indent on
syntax on


" vim:ft=vim:

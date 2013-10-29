let mapleader=","
let maplocalleader=","

call pathogen#infect()

runtime! vimrc.d/**.vim
runtime! vimrc.local.d/**.vim
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

set nocompatible
set modelines=5

" Put swap files out of the way
set directory=/var/tmp

set wildmode=list:longest

" Disable show mode when using powerline
set noshowmode


" Turn on line numbers
set number
" Highlight current line
set cursorline

set ruler
" Always show status line
set laststatus=2




filetype on
filetype plugin indent on
syntax on


" Avoid infinite loops when the pwd is $HOME
if !(getcwd() == $HOME)
  if filereadable(".vimrc")
    source .vimrc
  endif
  set runtimepath+=./.vim
endif


" vim:ft=vim:

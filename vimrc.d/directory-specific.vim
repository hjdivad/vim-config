" Avoid infinite loops when the pwd is $HOME
if exists("g:global_vimrc")
  finish
endif
let g:global_vimrc = 1


if filereadable(".vimrc")
  source .vimrc
endif
set runtimepath+=./.vim

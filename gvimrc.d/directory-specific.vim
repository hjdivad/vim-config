" Avoid infinite loops when the pwd is $HOME
if exists("g:global_gvimrc")
  finish
endif
let g:global_gvimrc = 1


if filereadable(".gvimrc")
  source .gvimrc
endif

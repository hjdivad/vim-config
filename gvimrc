runtime! gvimrc.d/**.vim
runtime! gvimrc.local.d/**.vim


" Avoid infinite loops when the pwd is $HOME
if filereadable(".gvimrc") && !(getcwd() == $HOME)
  source .gvimrc
endif


" vim:ft=vim:

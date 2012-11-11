runtime! gvimrc.d/**.vim


" Avoid infinite loops when the pwd is $HOME
if filereadable(".gvimrc") && !(getcwd() == $HOME)
  source .gvimrc
endif


" vim:ft=vim:

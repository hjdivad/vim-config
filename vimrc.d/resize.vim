if !exists("s:resizeWindows")
  function s:resizeWindows()
    let tabNumber = tabpagenr()
    execute 'tabdo wincmd ='
    execute 'tabn ' . tabNumber
  endfunction
endif

augroup HandleResize
  autocmd!
  autocmd VimResized * call <SID>resizeWindows()
augroup end

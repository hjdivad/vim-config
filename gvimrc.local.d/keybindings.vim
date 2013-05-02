function s:resetAddendum()
  wincmd v
  wincmd l
  silent edit ~/docs/wiki/Journal.markdown
  wincmd h
endfunction

nmap <leader>R :call g:tabReset()<CR> :call <SID>resetAddendum()<CR>
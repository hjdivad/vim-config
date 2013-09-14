" Map ALT-n to switch to tab n
map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> 9gt
map <A-0> 10gt

" Map ⌘ -n to switch to tab n
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> 10gt

" Reset to 10 tabs with a temporary todo list on tab 10
function g:tabReset()
  while tabpagenr('$') < 10
    execute ":tabnew"
  endwhile

  silent tabdo wincmd o
  silent tabdo enew
  tabfirst
endfunction

nmap <leader>R :call g:tabReset()<CR>

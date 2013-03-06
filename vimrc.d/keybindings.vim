" Tab navigation
map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 9gt
map <leader>0 10gt

" Toggle ruby block style (do/end {})
let g:blockle_mapping='<leader>e'

let g:bclose_no_default_mapping=1
" Close buffers without modifying window layout
nmap <leader>d :Bclose!<CR>:enew<CR>

" 'x is much easier to hit than `x and has more useful semantics: ie switching
" to the column of the mark as well as the row
nnoremap ' `

" List files with Command-T
nmap <leader>t :CommandT<CR>
" …and also force a cache flush
nmap <leader>T :CommandTFlush<CR>:CommandT<CR>


function s:update_decorations()
  " Don't need to call gitgutter since syntasticcheck does this indirectly by
  " saving
  "call GitGutter()
  exec "SyntasticCheck"
endfunction
nnoremap <CR> :nohl<CR>:call <SID>update_decorations()<CR>

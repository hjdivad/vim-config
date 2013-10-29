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

let g:ctrlp_map='<leader>t'
nmap <leader>b :CtrlPBuffer<CR>

" Move row-wise instead of line-wise
nnoremap j gj
nnoremap k gk

" Use the clipboard as default register, when available
if has("clipboard")
  :nnoremap <expr> y (v:register ==# '"' ? '"+' : '') . 'y'
  :nnoremap <expr> yy (v:register ==# '"' ? '"+' : '') . 'yy'
  :nnoremap <expr> Y (v:register ==# '"' ? '"+' : '') . 'Y'
  :xnoremap <expr> y (v:register ==# '"' ? '"+' : '') . 'y'
  :xnoremap <expr> Y (v:register ==# '"' ? '"+' : '') . 'Y'
endif


function s:update_decorations()
  " Syntastic checks on write, but no longer writes on SyntasticCheck
  :write
endfunction
nnoremap <CR> :nohl<CR>:call <SID>update_decorations()<CR>

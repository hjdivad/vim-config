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

nmap <leader>nt :NERDTreeFocus<CR>
nmap <leader>nf :NERDTreeFind<CR>

" 'x is much easier to hit than `x and has more useful semantics: ie switching
" to the column of the mark as well as the row
nnoremap ' `

" ,f to fuzzy-find files
nmap <leader>f :<C-U>CtrlP<CR>
" ,F to fuzzy-find files, blowing up the cache first
nmap <leader>F :<C-U>CtrlPClearCache<CR>:<C-U>CtrlP<CR>
" ,b to fuzzy-find buffers
nmap <leader>b :CtrlPBuffer<CR>

" yank filename
nmap <leader>yf :let @+=expand('%')<CR>

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

" Use normal window bindings for vim-tmux-navigator
let g:tmux_navigator_no_mappings=1
nnoremap <silent> <C-W>h :TmuxNavigateLeft<CR>
nnoremap <silent> <C-W>j :TmuxNavigateDown<CR>
nnoremap <silent> <C-W>k :TmuxNavigateUp<CR>
nnoremap <silent> <C-W>l :TmuxNavigateRight<CR>

vnoremap <leader>T :Tabularize<CR>


" map <leader>r to a command to set up <leader>r
nnoremap <leader>r :nnoremap <leader>r :silent exec('!tmux send-keys -t bottom-left "" c-m') \\| execute ':redraw!' <lt>CR><C-F>?"<CR>:nohl<CR>i

" map <leader>R to a command to set up <leader>r
nnoremap <leader>R :nnoremap <leader>R :silent exec('!tmux send-keys -t bottom-left "" c-m; and tmux select-pane -t bottom-left') \\| execute ':redraw!' <lt>CR><C-F>?"<CR>:nohl<CR>i


function s:install_enter_hook()
  nnoremap <CR> :nohl<CR>
endfunction

augroup EnterKeyManager
  autocmd!
  
  autocmd CmdwinEnter * nunmap <CR>
  autocmd CmdwinLeave * call s:install_enter_hook() 
augroup end
call s:install_enter_hook()

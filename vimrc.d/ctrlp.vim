" Do not switch tabs or windows; only ctrlp for the current buffer
let g:ctrlp_switch_buffer = 0
" I only want to ctrlp from vim's working tree, even if the current buffer is
" looking at a file outside of that tree
let g:ctrlp_working_path_mode = 'raw'

" Don't use wildignore because it messes up nerdtree
let g:ctrlp_custom_ignore = '\v.*/(node_modules|tmp|build|dist)/'

"=====================================================
" Haskell Settings
"=====================================================

" Manually save and reload
nnoremap <silent> <leader>wr :w \| :InteroReload<CR>

" Load individual modules
nnoremap <silent> <leader>il :InteroLoadCurrentModule<CR>
nnoremap <silent> <leader>if :InteroLoadCurrentFile<CR>

" Type-related information
map <silent> <leader>t <Plug>InteroGenericType
map <silent> <leader>T <Plug>InteroType
nnoremap <silent> <leader>it :InteroTypeInsert<CR>

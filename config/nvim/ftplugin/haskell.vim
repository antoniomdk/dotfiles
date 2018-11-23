"=====================================================
" Haskell Settings
"=====================================================

" Disable haskell-vim omnifunc and set necoghc omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:neoformat_enabled_haskell = ['brittany', 'stylishhaskell']
let g:neomake_haskell_enabled_makers = ['hlint', 'hdevtools']

au FileType haskell map <silent> <leader>t <Plug>InteroGenericType
au FileType haskell map <silent> <leader>T <Plug>InteroType
au FileType haskell nnoremap <silent> <leader>it :InteroTypeInsert<CR>

let g:intero_start_immediately = 0
let g:intero_type_on_hover = 0
let g:intero_window_size = 10
let g:intero_vertical_split = 0

" Manually save and reload
nnoremap <silent> <leader>wr :w \| :InteroReload<CR>

" Load individual modules
nnoremap <silent> <leader>il :InteroLoadCurrentModule<CR>
nnoremap <silent> <leader>if :InteroLoadCurrentFile<CR>

" Type-related information
map <silent> <leader>t <Plug>InteroGenericType
map <silent> <leader>T <Plug>InteroType
nnoremap <silent> <leader>it :InteroTypeInsert<CR>

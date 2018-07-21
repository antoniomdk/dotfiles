"=====================================================
" Haskell-vim settings
"=====================================================
" Disable haskell-vim omnifunc and set necoghc omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

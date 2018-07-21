"=====================================================
" NERDTree settings
"=====================================================
map <C-p> :NERDTreeToggle<CR>

" Autoload NERDTree if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Auto close NERDTree if no more files
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Show hidden files in NERDTree
let g:NERDTreeShowHidden=1
let g:NERDTreeIgnore=['\.DS_Store$', '\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']

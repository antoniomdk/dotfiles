" LEADER KEY
let g:mapleader = ","

" Abbreviations
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
nnoremap n nzzzv
nnoremap N Nzzzv

""Moving between splits with CRL-j/k/h/l"""
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
tnoremap <C-H> <C-\><C-N><C-W>h
tnoremap <C-J> <C-\><C-N><C-W>j
tnoremap <C-K> <C-\><C-N><C-W>k
tnoremap <C-L> <C-\><C-N><C-W>l

" Jump back mapping
" nnoremap <C-[> :pop<CR>

" NERDTree
nmap <C-p> :NERDTreeToggle<CR>

" Tagbar
nmap <C-t> :TagbarToggle<CR>
autocmd FileType pandoc nmap <C-t> :TOC<CR>

" Neoformat
nmap <Leader>f :Neoformat<CR>
vmap <Leader>f :Neoformat<CR>

" A (jumping to header/implementation file. For C/C++ code)
nmap <Leader>A :A<CR>

" EasyAlign
xmap <Leader>a <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)

" FZF
nnoremap <C-Space> :Files<cr>
nnoremap <C-b> :Buffers<cr>
"nnoremap <C-a> :Ag<cr> " Mapping used by tmux
nnoremap <C-f> :BLines<cr>

" Window Swapping
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

" Show C/C++ Docs with <Shift-k>
command! -nargs=+ Cppman silent! call system("tmux split-window cppman " . expand(<q-args>))
autocmd FileType cpp nnoremap <silent><buffer> K <Esc>:Cppman <cword><CR>

" Open location list
nnoremap <Leader>l :lopen<CR>

" Open Quickfix window
nnoremap <Leader>c :copen<CR>

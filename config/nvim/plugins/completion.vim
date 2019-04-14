"=====================================================
" Deoplete Settings
"=====================================================
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources#clang#executable = '/usr/bin/clang'
let g:deoplete#sources#clang#clang_header = ''
let g:deoplete#sources#jedi#show_docstring = 1

" Pandoc support
call deoplete#custom#var('omni', 'input_patterns', {
    \ 'pandoc': '@'
    \})

"=====================================================
" Clang 2 Settings
"=====================================================
let g:clang2_placeholder_next='<C-j>'

"=====================================================
" UltiSnips Settings
"=====================================================
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"=====================================================
" Supertab settings
"=====================================================
"let g:SuperTabDefaultCompletionType ='<c-x><c-n>'
"let g:SuperTabDefaultCompletionType = 'context'
"let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
"let g:SuperTabLongestHighlight=1
"let g:SuperTabLongestEnhanced=1

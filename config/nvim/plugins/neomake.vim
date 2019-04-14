call neomake#configure#automake('nw', 500)

let g:neomake_python_pylint_maker = {
      \ 'args': [
      \ '-d', 'C0103, C0111',
      \ '-f', 'text',
      \ '--msg-template="{path}:{line}:{column}:{C}: [{symbol}] {msg}"',
      \ '-r', 'n'
      \ ],
      \ 'errorformat':
      \ '%A%f:%l:%c:%t: %m,' .
      \ '%A%f:%l: %m,' .
      \ '%A%f:(%l): %m,' .
      \ '%-Z%p^%.%#,' .
      \ '%-G%.%#',
      \ }

let g:neomake_python_enabled_makers = ['pylint', 'flake8']
let g:neomake_haskell_enabled_makers = ['hlint', 'hdevtools']

call neomake#configure#automake('nw', 500)

let g:neomake_python_enabled_makers = ['mypy', 'pylint', 'flake8']
let g:neomake_haskell_enabled_makers = ['hlint', 'hdevtools']

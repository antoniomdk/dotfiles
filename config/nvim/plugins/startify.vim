let g:startify_custom_header = [
      \'',
      \'   ###    ##    ## ########  #######  ##    ## ####  #######  ##     ## ########  ##    ##',
      \'  ## ##   ###   ##    ##    ##     ## ###   ##  ##  ##     ## ###   ### ##     ## ##   ##',
      \' ##   ##  ####  ##    ##    ##     ## ####  ##  ##  ##     ## #### #### ##     ## ##  ##',
      \'##     ## ## ## ##    ##    ##     ## ## ## ##  ##  ##     ## ## ### ## ##     ## #####',
      \'######### ##  ####    ##    ##     ## ##  ####  ##  ##     ## ##     ## ##     ## ##  ##',
      \'##     ## ##   ###    ##    ##     ## ##   ###  ##  ##     ## ##     ## ##     ## ##   ##',
      \'##     ## ##    ##    ##     #######  ##    ## ####  #######  ##     ## ########  ##    ##',
      \]

let g:startify_lists = [
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ { 'header': ['   Sessions'],       'type': 'sessions' },
      \ { 'header': ['   Bookmarks'],      'type': 'bookmarks' },
      \ ]

let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc',
      \ 'bundle/.*/doc',
      \ ]

let g:startify_disable_at_vimenter = 1

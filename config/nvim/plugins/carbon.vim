function! s:Screenshot(bang, ...) range
  let l:filename = get(a:000, 0, expand('%:t:r') . "_" . strftime('%y%m%d%H%M%S'))
  let l:cmd = "carbon-now -h -l . -t " . l:filename . " -o -p " . g:default_preset . " 1> /dev/null"
  let l:selection = shellescape(join(getline(a:firstline, a:lastline), "\n"))

  echo l:cmd
  echo 'Generating screenshot on ' . l:filename . '.png'

  echo system('echo ' . l:selection . " | " . l:cmd)

  if a:bang == 1
    echo system('open ' . l:filename . '.png')
  endif
endfunction


command! -bang -nargs=? -range=% TakeScreenshot <line1>,<line2> call s:Screenshot(<bang>0, <f-args>)


let g:default_preset = 'latest-preset'

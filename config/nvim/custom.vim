""Convert pdf to text. It allows to display it inside vim.""
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -

"""""iTerm2 Commands""""""
autocmd BufEnter *.png,*.jpg,*gif exec "! ~/.iterm2/imgcat ".expand("%") | :bw

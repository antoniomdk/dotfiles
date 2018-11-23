let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

"=====================================================
" EDITOR settings
"=====================================================
""""""GENERAL""""""
set clipboard+=unnamedplus
set completeopt-=preview
set noshowmode
set lazyredraw
set hidden
set noswapfile
set number                     " Show line numbers
set ignorecase
set smartcase
set magic
set showmatch
set nobackup
set nowb
set noerrorbells
set updatetime=250
set linebreak                  " Break lines at word (requires Wrap lines)
set showbreak=+++              " Wrap-broken line prefix
set textwidth=90               " Line wrap (number of cols)
set visualbell                 " Use visual bell (no beeping)
set expandtab                  " Use spaces instead of tabs
set shiftwidth=2               " Number of auto-indent spaces
set smartindent                " Enable smart-indent
set softtabstop=2              " Number of spaces per Tab
set undolevels=1000            " Number of undo levels
set splitright

"""""""""THEME SETTINGS""""""""""""
"set background=dark
colorscheme one
set background=dark
set guifont=Knack_Nerd_Font:h12

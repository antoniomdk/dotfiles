let g:python3_host_prog=$HOME.'/Documents/Projects/neovim_python_env/bin/python'

" Required:
call plug#begin('~/.local/share/nvim/plugged')

" Completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'

" File management
Plug 'scrooloose/nerdtree'

" Sintax support
Plug 'sheerun/vim-polyglot'

" Tmux
Plug 'jpalardy/vim-slime'
Plug 'christoomey/vim-tmux-navigator'

" Neoterminal
Plug 'jalvesaq/vimcmdline'
Plug 'mklabs/split-term.vim'

" Formatting
Plug 'ntpeters/vim-better-whitespace'
Plug 'sbdchd/neoformat', {'on': 'Neoformat'}
Plug 'junegunn/vim-easy-align'

" Helpers
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'wesQ3/vim-windowswap'
Plug 'scrooloose/nerdcommenter'
Plug 'danro/rename.vim', { 'on': 'Rename' }

" Git
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Test running helpers
Plug 'janko-m/vim-test'

" Text objects
Plug 'wellle/targets.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-user'

" Common IDE Plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neomake/neomake'
Plug 'metakirby5/codi.vim', { 'on': 'Codi'}
Plug 'Konfekt/FastFold'

" Tags Management
Plug 'majutsushi/tagbar', { 'on': ['TagBar', 'TagbarToggle'] }

" Interface
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'rakr/vim-one'

" Haskell
Plug 'pbrisbin/vim-syntax-shakespeare', {'for': 'haskell' }
Plug 'neovimhaskell/haskell-vim', {'for': 'haskell' }
Plug 'parsonsmatt/intero-neovim', {'for': 'haskell'}
Plug 'bitc/vim-hdevtools', {'for': 'haskell'}

" Python
Plug 'zchee/deoplete-jedi', {'for': 'python'}
Plug 'vim-scripts/indentpython.vim', { 'for': 'python' }
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }
Plug 'jeetsukumaran/vim-pythonsense', { 'for': 'python' }

" C++
Plug 'vim-scripts/a.vim', { 'for': ['c', 'cpp'] }
Plug 'tweekmonster/deoplete-clang2', { 'for': ['c', 'cpp'] }

" Scala
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }

" Ruby
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }

" Note Taking
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()

source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/custom.vim

for f in split(glob('$HOME/.config/nvim/plugins/*.vim'), '\n')
  exe 'source' f
endfor



" Required:
call plug#begin('~/.local/share/nvim/plugged')

" Common completion plugins
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'

" File management
Plug 'scrooloose/nerdtree', {'on_cmd': 'NERDTreeToggle'}

" Sintax support
Plug 'sheerun/vim-polyglot'

" Tmux
Plug 'jpalardy/vim-slime'
Plug 'christoomey/vim-tmux-navigator'

" Formatting
Plug 'ntpeters/vim-better-whitespace'
Plug 'sbdchd/neoformat', {'on': 'Neoformat'}
Plug 'junegunn/vim-easy-align'

" Helpers
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'wesQ3/vim-windowswap'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'danro/rename.vim', { 'on': 'Rename' }

" Text objects
Plug 'wellle/targets.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-user'

" Common IDE Plugins
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'
Plug 'w0rp/ale'
Plug 'neomake/neomake'
Plug 'metakirby5/codi.vim', { 'on': 'Codi'}
Plug 'Shougo/vimproc.vim', {'build' : 'make'}
Plug 'Shougo/denite.nvim'
Plug 'Konfekt/FastFold'

" Tags Management
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar', { 'on': ['TagBar', 'TagbarToggle'] }

" Interface
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" Haskell
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'pbrisbin/vim-syntax-shakespeare', {'for': 'haskell' }

" Python
Plug 'zchee/deoplete-jedi', {'for': 'python'}
Plug 'vim-scripts/indentpython.vim', { 'for': 'python' }
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins', 'for': 'python'}
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }
Plug 'jeetsukumaran/vim-pythonsense', { 'for': 'python' }

" Typescript
Plug 'mhartington/nvim-typescript', { 'for': 'typescript' }
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }

" C++
Plug 'vim-scripts/a.vim', { 'for': ['c', 'cpp'] }
Plug 'tweekmonster/deoplete-clang2', { 'for': ['c', 'cpp'] }

" Scala
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }

" Ruby
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }

call plug#end()

source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/custom.vim

for f in split(glob('$HOME/.config/nvim/plugins/*.vim'), '\n')
  exe 'source' f
endfor

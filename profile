# Overriding system vim with Neovim
alias vim="nvim"

# Fasd aliases
alias v='f -e vim' # quick opening files with vim
# Clear alias
alias c="clear"
# ls aliases
alias l='exa'
alias ll='exa -bghl --color=automatic'
alias la='exa -abghl --git --color=automatic'
# Making cp interactive
alias cp="cp -iv"
alias rm="rm -iv"
alias mv="mv -iv"
# Better default du and df
alias du="du -cksh"
alias df="df -h"
# Overriding system ctags
alias ctags="`brew --prefix`/bin/ctags"
# Enable 256 colors for tmux
alias tmux="TERM=screen-256color-bce tmux"

# Fasd initialization
eval "$(fasd --init auto)"

# Enhancd initialization
source ~/utils/enhancd/init.sh
export ENHANCD_FILTER=fzf

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1
# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color
# Add ~/bin to PATH

export PATH
export PATH=$PATH:~/bin
export PATH=/usr/local/bin:$PATH
# added by Anaconda3 installer
export PATH="/Users/AntonioMolner/anaconda3/bin:$PATH"
# Adding Scala home to PATH
export SCALA_HOME="/usr/local/share/scala"
export PATH=$PATH:$SCALA_HOME/bin

export EXTERNAL_LIBCLANG_PATH="/usr/local/Cellar/llvm/6.0.0/lib/libclang.dylib"

# Used by Octave Jupyter kernel
export OCTAVE_EXECUTABLE=/usr/local/bin/octave-cli

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib

# Added by Conscript
PATH="$PATH:/Users/AntonioMolner/.conscript/bin"
PATH="$PATH:/Users/AntonioMolner/.conscript/bin"

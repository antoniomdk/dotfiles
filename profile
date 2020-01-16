source ~/.exports
source ~/.aliases

# Tmuxinator completion
source ~/.config/tmuxinator/completion/tmuxinator.zsh

# Fasd initialization
eval "$(fasd --init auto)"

# Enhancd initialization
source ~/utils/enhancd/init.sh

# Preferred editor for local and remote sessions
export EDITOR='nvim'


# Run tmux on start
#if which tmux >/dev/null 2>&1; then
#  # if no session is started, start a new session
#  test -z ${TMUX} && tmux
#  # when quitting tmux, try to attach
#  while test -z ${TMUX}; do
#    tmux attach || break
#  done
#fi

export PATH="$HOME/.poetry/bin:$PATH"

# Recruitbot project
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="$PATH:/Users/AntonioMolner/Applications/activator-1.3.2-minimal:/Users/jschiff/Library/Python/2.7/bin"
export HISTSIZE=1000000000
export HISTFILESIZE=100000000

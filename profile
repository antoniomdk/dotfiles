source ~/.aliases
source ~/.exports

# Tmuxinator completion
source ~/.config/tmuxinator/completion/tmuxinator.zsh
# Fasd initialization
eval "$(fasd --init auto)"
# Enhancd initialization
source ~/utils/enhancd/init.sh

# Run tmux on start
if which tmux >/dev/null 2>&1; then
  # if no session is started, start a new session
  test -z ${TMUX} && tmux
  # when quitting tmux, try to attach
  while test -z ${TMUX}; do
    tmux attach || break
  done
fi

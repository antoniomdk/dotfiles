#!/bin/zsh

echo "Updating homebrew/linuxbrew..."
brew update

echo "Installing cli utilities"
# A fast code searching tool
if ! command -v ag &> /dev/null; then
  brew install the_silver_searcher
fi

# Install ripgrep
if ! command -v rg &> /dev/null; then
  brew install ripgrep
fi

# Enhanced directory navigation
echo "Installing enhanced navigation utilities"

if [ ! -d "$HOME/utils/enhancd" ]; then
  git clone https://github.com/b4b4r07/enhancd.git  $HOME/utils/enhancd
fi

if ! command -v fasd &> /dev/null; then
  brew install fasd
fi

# Enhanced ls
if ! command -v exa &> /dev/null; then
  brew install exa
fi

# Installing ohmyzsh theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo "Installing neovim"
# Neovim
if ! command -v nvim &> /dev/null; then
  brew install neovim
fi

# Tmux
if ! command -v tmux &> /dev/null; then
  brew install tmux
fi

if ! command -v gem &> /dev/null; then
  brew install ruby
fi

if ! command -v tmuxinator &> /dev/null; then
  gem install tmuxinator
fi

# Install enhanced diff tool
if ! command -v icdiff &> /dev/null; then
  brew install icdiff
fi

# Ctags. (Used by Neovim)
if ! command -v ctags &> /dev/null; then
  brew install --HEAD universal-ctags/universal-ctags/universal-ctags
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Nvim configuration
pip2 install neovim
pip3 install neovim

# Install dotfiles
echo "Making a backup of your dotfiles ----> $HOME/dotfiles_OLD"
mkdir -p $HOME/dotfiles_OLD
cp -af ~/.profile ~/.zshrc ~/.tmux.conf ~/.bashrc $HOME/dotfiles_OLD/

echo "Creating symlinks"
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

ln -nvfs $DOTFILES_DIR/bashrc    $HOME/.bashrc
ln -nvfs $DOTFILES_DIR/zshrc     $HOME/.zshrc
ln -nvfs $DOTFILES_DIR/tmux.conf $HOME/.tmux.conf
ln -nvfs $DOTFILES_DIR/exports   $HOME/.exports
ln -nvfs $DOTFILES_DIR/aliases   $HOME/.aliases

mkdir -p $HOME/.config

find config -mindepth 1 -maxdepth 1 | while read dir; do
  ln -nvfs $DOTFILES_DIR/$dir $HOME/.$dir
done


# Installing platform-dependent files
if [[ $platform == 'darwin' ]]; then
  cat exports.osx >> $HOME/.exports
  cat aliases.osx >> $HOME/.aliases
else
  cat exports.linux >> $HOME/.exports
fi

echo "\nYou should restore autocompletions. To do it, just use:\nautoload -Uz compinstall && compinstall"

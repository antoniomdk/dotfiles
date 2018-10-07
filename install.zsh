#!/bin/zsh

echo "Updating homebrew/linuxbrew..."
#brew update

echo "Installing cli utilities"
# Fuzzy finder
if ! command -v fzf &> /dev/null; then
  brew install fzf
fi

# A fast code searching tool
if ! command -v ag &> /dev/null; then
  brew install the_silver_searcher
fi

# Install ripgrep
if ! command -v rg &> /dev/null; then
  brew install ripgrep
fi

echo "Installing enhanced navigation utilities"
# Enhanced directory navigation
git clone https://github.com/b4b4r07/enhancd.git  $HOME/utils/enhancd
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

# Ctags. (Used by Neovim)
if ! command -v ctags &> /dev/null; then
  brew install --HEAD universal-ctags/universal-ctags/universal-ctags
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Nvim configuration
pip2 install neovim
pip3 install neovim

# Install dotfiles
echo "Installing dotfiles manager"
pip install dotfiles
echo "Making a backup of your dotfiles ----> $HOME/dotfiles_OLD"
mkdir dotfiles_OLD
cp -a ~/.profile ~/.zshrc ~/.tmux.conf ~/.bashrc dotfiles_OLD/
echo "Linking dotfiles"
dotfiles -R.  --sync --force

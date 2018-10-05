if command -v brew &> /dev/null; then
  echo "Homebrew/Linuxbrew is not installed. It is neccesary to complete the installation."
  read -p "Do you want to install it? " -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
  fi
  if [[ "$OSTYPE" == "darwin"* ]]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
    test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
    test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
    test -r ~/.bash_profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
    echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.profile
  fi
fi

echo "Updating homebrew/linuxbrew..."
brew update

echo "Installing cli utilities"
# Fuzzy finder
if command -v fzf &> /dev/null; then
  brew install fzf
fi

# A fast code searching tool
if command -v ag &> /dev/null; then
  brew install the_silver_searcher
fi

# Install ripgrep
if command -v rg &> /dev/null; then
  read -p "[Optional] Do you want to install ripgrep to get faster code searching? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    brew install ripgrep
  fi
fi

echo "Installing enhanced navigation utilities"
# Enhanced directory navigation
https://github.com/b4b4r07/enhancd.git  $HOME/utils/enhancd
if command -v fasd &> /dev/null; then
  brew install fasd
fi

# Enhanced ls
if command -v exa &> /dev/null; then
  brew install exa
fi

echo "Installing neovim"
# Neovim
if command -v nvim &> /dev/null; then
  brew install neovim
fi

# Tmux
if command -v tmux &> /dev/null; then
  brew install tmux
fi

if command -v tmuxinator &> /dev/null; then
  gem install tmuxinator
fi

# Ctags. (Used by Neovim)
if command -v ctags &> /dev/null; then
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
dotfiles --repo= .  --sync

# antoniomdk's dotfiles

My personal configuration files for zsh, neovim, tmux, iterm, macOS, tmuxinator...

## Features

### Neovim

#### Editor

Powerful fully-featured editor.

* Special support for: C++, Python, Scala and Haskell (other filetypes are supported as well)
* Code completion
* File browser
* Formatting tools
* Fuzzy searching
* Tag management and exploring
* Gruvbox theme
* Mnemonic mappings
* A lot of more feautures...

![vim1](assets/screenshot_vim1.png)

![vim1](assets/screenshot_vim3.png)

#### Tmux integration for REPLs

![vim1](assets/screenshot_vim2.png)

It is possible to make the editor work with external REPLs in a simple way.

- Support for most REPL: ipython, R, ihaskell, scala...

- Automatic layout creation by [tmuxinator](https://github.com/tmuxinator/tmuxinator)


> See [vim-slime](https://github.com/jpalardy/vim-slime) for details
>



#### Mappings

TODO



### Terminal

#### Theme

I love gruvbox theme so I use it both for Neovim and iTerm2. I put the .itermcolors file [here](gruvbox.itermcolors) for you to use it easily.

> Note: If you are on macOS and not using [iTerm2](https://iterm2.com/), please, install it :)

#### Enhanced ls

![exa](assets/enhanced_ls.gif)

I prefer [exa](https://github.com/ogham/exa) over ls, so I have aliases for **l, la** and **ll**

#### Enhanced cd

![exa](assets/enhanced_cd.gif)

Interactive directory navigation thanks to [fzf](https://github.com/junegunn/fzf) and [enhancd](https://github.com/b4b4r07/enhancd)

#### Fast navigation

![exa](assets/fasd.gif)

Ultra fast navigation through directories and files thanks to [fasd](https://github.com/clvv/fasd)



### Tmuxinator

Default tmuxinator projects to use Neovim with the most common REPLs:

| Language | Project Name | Command executed |
| :------: | :----------: | :--------------: |
|  Python  | python-repl  |     ipython      |
|    R     |    r-repl    |        R         |
|  Scala   |  scala-repl  |      scala       |
| Haskell  | haskell-repl | stack exec ghci  |
|   Ruby   |  ruby-repl   |       irb        |



## Requirements

I use Homebrew package manager that allows me to deal with dependencies easily. If you use it too, run **install.sh** script to install the required packages.

If you use Linux or Homebrew isn't for you, follow the install instructions of each package to get everything working. In case that you don't want to use some tool, just don't install it, but make sure the aliases and other related files are changed.

> Note: **Neovim requires fzf** for some IDE features so if you want that features you should install it. Fzf can be replaced by Unite, CtrP or any similar plugin, but it is not supported out of the box.

**Neovim** requires python2 and python3 support to work correctly so, make sure your system has both installed and run the following:

```bash
pip2 install neovim
pip3 install neovim
```

 TODO

...
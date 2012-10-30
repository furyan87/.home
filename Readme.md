# .home

These are my dotfiles to set preferences for zsh and some handy commands for everyday usage.

## Installation

Installation is very simple, you just have to clone this repository to your home dir and run `make install`:

```bash
git clone git://github.com/domnikl/.home.git $HOME/.home
cd $HOME/.home && make install
```

The setup script will then clone the [prezto](https://github.com/sorin-ionescu/prezto) repository (if necessary) and create a symlink in your home dir .zshrc to adjust $PATH as well as set zsh preferences.


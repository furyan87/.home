#
# Sets Oh My Zsh options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Dominik Liebler <liebler.dominik@googlemail.com>
#

DOT_HOME="$HOME/.home"

# Set the path to Oh My Zsh.
export OMZ="$HOME/.oh-my-zsh"

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':omz:module:editor' keymap 'emacs'

# Auto convert .... to ../..
zstyle ':omz:module:editor' dot-expansion 'no'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':omz:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':omz:*:*' color 'yes'

# Auto set the tab and window titles.
zstyle ':omz:module:terminal' auto-title 'yes'

# Set the Zsh functions to load (man zshcontrib).
# zstyle ':omz:load' zfunction 'zargs' 'zmv'

# Set the Oh My Zsh modules to load (browse modules).
zstyle ':omz:load' omodule 'environment' 'terminal' 'editor' 'completion' \
  'history' 'directory' 'spectrum' 'alias' 'utility' 'prompt' 'git'

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':omz:module:prompt' theme 'domnikl'

# This will make you shout: OH MY ZSHELL!
source "$OMZ/init.zsh"

# Customize to your needs...
source $DOT_HOME/.aliases
source $DOT_HOME/.environment_variables

export EDITOR=`which vim`

# load ~/.local.zshrc file, if it exists
if [ -f "$HOME/.local.zshrc" ]; then
	source $HOME/.local.zshrc
fi

if [ -d "$HOME/.rvm/bin" ]; then
	PATH=$PATH:$HOME/.rvm/bin # add RVM to PATH
	source $HOME/.rvm/scripts/rvm
fi


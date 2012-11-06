#
# Sets Oh My Zsh options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export ZSH=$HOME/.oh-my-zsh/

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':omz:editor' keymap 'vi'

# Auto convert .... to ../..
zstyle ':omz:editor' dot-expansion 'yes'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':omz:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':omz:*:*' color 'yes'

# Auto set the tab and window titles.
zstyle ':omz:terminal' auto-title 'yes'

# Set the plugins to load (see $OMZ/plugins/).
zstyle ':omz:load' plugin 'archive' 'git' 'battery' 'nyan'

# This will make you shout: OH MY ZSHELL!
source "$DOT_HOME/.aliases"

if [ -f "$HOME/.local.zshrc" ]; then
	source $HOME/.local.zshrc
fi

#Loading theme
ZSH_THEME="sorin"

# set oh-my-zsh home directory
source $ZSH/oh-my-zsh.sh
# set directory for git-flow completion 
source "$DOT_HOME/git-flow-completion.zsh"


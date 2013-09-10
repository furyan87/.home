#
# Sets Oh My Zsh options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export ZSH=$HOME/.oh-my-zsh/

# Set the key mapping style to 'emacs' or 'vi'.
#zstyle ':omz:editor' keymap 'vi'

# Auto convert .... to ../..
#zstyle ':omz:editor' dot-expansion 'yes'

# Set case-sensitivity for completion, history lookup, etc.
#zstyle ':omz:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
#zstyle ':omz:*:*' color 'yes'

# Auto set the tab and window titles.
#zstyle ':omz:terminal' auto-title 'yes'

# Set the plugins to load (see $OMZ/plugins/).
#zstyle ':omz:load' plugin 'archive' 'git' 'battery' 'nyan'

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source "$DOT_HOME/.aliases"
source "$HOME/.local.exports"

if [ -f "$HOME/.local.zshrc" ]; then
	source $HOME/.local.zshrc
fi

#Loading theme
ZSH_THEME="sorin"

# set oh-my-zsh home directory
source $ZSH/oh-my-zsh.sh
# set directory for git-flow completion 
source "$DOT_HOME/git-flow-completion.zsh"


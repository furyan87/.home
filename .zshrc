#
# Sets Oh My Zsh options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

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

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':omz:prompt' theme 'sorin'
#zstyle ':omz:prompt' theme 'nicoulaj'

# This will make you shout: OH MY ZSHELL!
source "$HOME/.oh-my-zsh/init.zsh"
source "$HOME/.aliases"
source "$HOME/.exports"

if [ -f "$HOME/.local.zshrc" ]; then
	source $HOME/.local.zshrc
fi

# Customize to your needs...


# Makefile to install .home on the target system

# destination path
DEST_PATH = $(HOME)/.home

# files to delete from $HOME
DOT_FILES = $(HOME)/.zshrc $(HOME)/.gitconfig $(HOME)/.gitignore $(HOME)/.vimrc

# prezto Repository to be used
PREZTO_REPO = https://github.com/sorin-ionescu/prezto.git

# local .zshrc (gets inserted into .zshrc for local specialities)
LOCAL_SETTINGS_FILE = $(HOME)/.local.zshrc

THEME = prompt_domnikl_setup

BUNDLE_BIN = `which bundle`

PREZTO=.zprezto

install: $(HOME)/$(PREZTO) clean $(DOT_FILES) theme $(LOCAL_SETTINGS_FILE) completions help
clean:
	@echo "cleaning dotfiles ..."
	rm -f $(DOT_FILES)

help:
	@echo "done"
	@echo 
	@echo " => run 'chsh -s' to change your used shell to activate settings"

completions:
	@echo "downloading git flow completions for zsh ..."
	@wget -q -nc https://raw.github.com/bobthecow/git-flow-completion/master/git-flow-completion.zsh

# target to clone prezto repository
$(HOME)/$(PREZTO):
	git clone --recursive $(PREZTO_REPO) $(HOME)/$(PREZTO)

# sym links

$(HOME)/.gitconfig:
	ln -s $(DEST_PATH)/.gitconfig $(HOME)/.gitconfig

$(HOME)/.zshrc:
	ln -s $(DEST_PATH)/.zshrc $(HOME)/.zshrc

$(HOME)/.zshenv:
	ln -s $(DEST_PATH)/.zshenv $(HOME)/.zshenv

# local settings file
$(LOCAL_SETTINGS_FILE):
	touch $(LOCAL_SETTINGS_FILE)

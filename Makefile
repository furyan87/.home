# Makefile to install .home on the target system

# destination path
DEST_PATH = $(HOME)/.home

# files to delete from $HOME
DOT_FILES = $(HOME)/.zshrc $(HOME)/.zshenv $(HOME)/.gitconfig $(HOME)/.gitignore $(HOME)/.vimrc $(HOME)/.vimbackup

# prezto Repository to be used
PREZTO_REPO = https://github.com/sorin-ionescu/prezto.git

# local .zshrc (gets inserted into .zshrc for local specialities)
LOCAL_SETTINGS_FILE = $(HOME)/.local.zshrc

install: $(HOME)/$(PREZTO) clean $(DOT_FILES) $(LOCAL_SETTINGS_FILE) completions help
clean:
	@echo "cleaning dotfiles ..."
	rm -fr $(DOT_FILES)

help:
	@echo "done"
	@echo 
	@echo " => run 'chsh -s' to change your used shell to activate settings"

completions:
	@echo "downloading git flow completions for zsh ..."
	@wget -q -nc https://raw.github.com/bobthecow/git-flow-completion/master/git-flow-completion.zsh

# sym links

$(HOME)/.gitconfig:
	ln -s $(DEST_PATH)/.gitconfig $(HOME)/.gitconfig

$(HOME)/.gitignore:
	ln -s $(DEST_PATH)/.gitignore $(HOME)/.gitignore

$(HOME)/.zshrc:
	ln -s $(DEST_PATH)/.zshrc $(HOME)/.zshrc

$(HOME)/.zshenv:
	ln -s $(DEST_PATH)/.zshenv $(HOME)/.zshenv

$(HOME)/.vimbackup:
	mkdir $(HOME)/.vimbackup

$(HOME)/.vimrc:
	ln -s $(DEST_PATH)/.vimrc $(HOME)/.vimrc

$(HOME)/.vim:
	ln -s $(DEST_PATH)/.vim/ $(HOME)/.vim

# local settings file
$(LOCAL_SETTINGS_FILE):
	touch $(LOCAL_SETTINGS_FILE)

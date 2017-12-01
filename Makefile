.PHONY: zsh spacemacs

zsh: .zshrc .zshenv
	git submodule init powerlevel9k
	git submodule update powerlevel9k
	install -m 440 .zshrc $(HOME)/.zshrc
	install -m 640 .zshenv $(HOME)/.zshenv
	echo "DOTFILES=$(CURDIR)" >> $(HOME)/.zshenv
	chmod 440 $(HOME)/.zshenv

spacemacs: .spacemacs
	install -m 640 .spacemacs $(HOME)/.spacemacs

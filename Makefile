.PHONY: git sway i3 i3blocks i3status spacemacs ssh vim xresources zsh test gnupg mbsync systemd

ifndef DEST
DEST=$(HOME)
endif

all: install

install: fish git i3blocks i3status spacemacs ssh systemd vim xresources zsh

test:
	install -d test
	$(MAKE) DEST=test all

clean:
	rm -rf test

git: .gitconfig
	ln -rs .gitconfig $(DEST)

i3: i3status i3blocks .config/i3/config
	mkdir -p $(DEST)/.config
	ln -rs .config/i3 $(DEST)/.config

sway: i3status i3blocks .config/sway/config .config/sway/spacemacs .config/sway/solarized_light
	mkdir -p $(DEST)/.config
	ln -rs .config/i3 $(DEST)/.config

i3status: .config/i3status
	mkdir -p $(DEST)/.config
	ln -rs .config/i3status $(DEST)/.config

i3blocks: .config/i3blocks
	mkdir -p $(DEST)/.config
	ln -rs .config/i3blocks $(DEST)/.config

zsh: .zshrc .zshenv
	git submodule init powerlevel9k
	git submodule update powerlevel9k
	ln -rs .zshrc $(DEST)
	install .zshenv $(DEST)
	echo "DOTFILES=$(CURDIR)" >> $(DEST)/.zshenv

spacemacs: .spacemacs
	ln -rs .spacemacs $(DEST)

mbsync: .mbsyncrc
	ln -rs .mbsyncrc $(DEST)

xresources: .Xresources
	ln -rs .Xresources $(DEST)

ssh: .ssh/config
	mkdir -p $(DEST)/.ssh
	ln -rs .ssh/config $(DEST)/.ssh

vim: .vimrc
	mkdir -p $(DEST)/.vim/backup
	ln -rs .vimrc $(DEST)

fish:
	mkdir -p $(DEST)/.config
	ln -rs .config/fish $(DEST)/.config

systemd:
	mkdir -p $(DEST)/.config
	ln -rs .config/systemd $(DEST)/.config/systemd

gnupg:
	mkdir -p $(DEST)/.gnupg
	ln -rs .gnupg/gpg.conf $(DEST)/.gnupg
	ln -rs .gnupg/gpg-agent.conf $(DEST)/.gnupg-agent

mailrc:
	ln -rs .mailrc $(DEST)

.PHONY: git sway i3blocks i3status spacemacs ssh vim xresources zsh test

ifndef DEST
DEST=$(HOME)
endif

all: install

install: fish git i3 i3blocks i3status spacemacs ssh systemd vim xresources zsh

test:
	install -d test
	$(MAKE) DEST=test all

clean:
	rm -r test

git: .gitconfig
	install -m 440 .gitconfig $(DEST)/.gitconfig

sway: i3status i3blocks .config/sway/config .config/sway/spacemacs
	install -d $(DEST)/.config/sway
	install -m 440 .config/sway/config $(DEST)/.config/sway/config
	install -m 440 .config/sway/spacemacs $(DEST)/.config/sway/spacemacs
	install -m 440 .config/i3status/config $(DEST)/.config/i3status

i3status: .config/i3status
	install -d $(DEST)/.config/i3status $(DEST)/.config/i3status

i3blocks: .config/i3blocks
	install -d $(DEST)/.config/i3blocks/lib
	install -m 440 .config/i3blocks/config $(DEST)/.config/i3blocks
	install -m 540 .config/i3blocks/lib/* $(DEST)/.config/i3blocks/lib

zsh: .zshrc .zshenv
	git submodule init powerlevel9k
	git submodule update powerlevel9k
	install -m 440 .zshrc $(DEST)
	install -m 640 .zshenv $(DEST)
	echo "DOTFILES=$(CURDIR)" >> $(DEST)/.zshenv
	chmod 440 $(DEST)/.zshenv

spacemacs: .spacemacs
	install -m 640 .spacemacs $(DEST)

xresources: .Xresources
	install -m 440 .Xresources $(DEST)

ssh: .ssh/config
	install -m 440 .ssh/config $(DEST)/.ssh

vim: .vimrc
	install -d $(DEST)/.vim/backup
	install -m 440 .vimrc $(DEST)

fish:
	install -d $(DEST)/.config/fish
	install -m 440 .config/fish/config.fish $(DEST)/.config/fish/
	install -d $(DEST)/.config/fish/functions $(DEST)/.config/fish/

systemd:
	install -d $(DEST)/.config/systemd/user
	install -m 440 .config/systemd/user/* $(DEST)/.config/systemd/user

SOURCE = $(HOME)/.i3,$(HOME)/.i3status,$(HOME)/.zsh,$(HOME)/.zshrc,$(HOME)/.zshenv,$(HOME)/.vim,$(HOME)/.vimrc,$(HOME)/.config/dunst/dunstrc,$(HOME)/.config/zathura/zathurarc,$(HOME)/.Xmodmap,$(HOME)/.Xresources

clean:
	mkdir -p $(HOME)/.dotfilesi.backup
	mv {$(SOURCE)} $(HOME)/.dotfiles-backup

all: zsh i3 zathura vim xmodmap dunst

zsh: .zsh .zshrc .zshenv
	ln -s $(PWD)/.zsh $(HOME)
	ln -s $(PWD)/.zshrc $(HOME)
	ln -s $(PWD)/.zshenv $(HOME)

i3: .i3 .i3status.conf
	ln -s $(PWD)/.i3 $(HOME)
	ln -s $(PWD)/.i3status.conf $(HOME)

zathura: .config/zathura/zathurarc
	ln -s $(PWD)/.config/zathura/zathurarc $(HOME)/.config/zathura/

vim: .vimrc
	mkdir -p $(HOME)/.vim
	mkdir -p $(HOME)/.vim-backup
	git clone 'https://github.com/gmarik/Vundle.vim.git' $(HOME)/.vim/bundle/Vundle.vim
	ln -s $(PWD)/.vimrc $(HOME)
	vim -c PluginInstall to finish

xmodmap: .Xmodmap
	ln -s $(PWD)/.Xmodmap $(HOME)
	xmodmap $(HOME)/.Xmodmap

xresources: .Xresources
	ln -s $(PWD)/.Xresources $(HOME)
	xmodmap $(HOME)/.Xresources

dunst: .config/dunst/dunstrc
	ln -s $(PWD)/.config/dunst/dunstrc $HOME/.config/dunst/dunstrc

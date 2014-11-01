SOURCE = $(HOME)/.i3 $(HOME)/.i3status $(HOME)/.zsh $(HOME)/.zshrc $(HOME)/.zshenv $(HOME)/.vim $(HOME)/.vimrc $(HOME)/.config/dunst/dunstrc $(HOME)/.config/zathura/zathurarc $(HOME)/.Xmodmap

all: zsh i3 zathura vim xmodmap dunst

clean:
	for f in $(SOURCE); do 
		mv $(f) $(f).old
	done

zsh:
	ln -s $(PWD)/.zsh $(HOME)/
	ln -s $(PWD)/.zshrc $(HOME)/
	ln -s $(PWD)/.zshenv $(HOME)/

i3:
	ln -s $(PWD)/.i3 $(HOME)/
	ln -s $(PWD)/.i3status.conf $(HOME)/

zathura:
	ln -s $(PWD)/.config/zathura/zathurarc $(HOME)/.config/zathura/

vim: `which git`
	mkdir -p $(HOME)/.vim
	mkdir -p $(HOME)/.vim-backup
	git clone 'https://github.com/gmarik/Vundle.vim.git' $(HOME)/.vim/bundle/Vundle.vim
	ln -s $(PWD)/.vimrc $(HOME)/
	@echo 'Run "vim -c PluginInstall" to finish'

xmodmap:
	ln -s $(PWD)/.Xmodmap $(HOME)/

dunst:
	ln -s $(PWD)/.config/dunst/dunstrc $HOME/.config/dunst/dunstrc

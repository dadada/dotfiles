export ZSH=~/.zsh
export TERM="xterm-256color"

# Load all of the config files in ~/.zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Load and run compinit
autoload -U compinit
compinit -i
source ~/.powerlevel9k/powerlevel9k.zsh-theme

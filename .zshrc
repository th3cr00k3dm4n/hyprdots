# Enable colors and change prompt:
autoload -U colors && colors
# History in cache directory:

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

#Auto cd
setopt auto_cd

#alias
alias dwn="cd Downloads"
alias ll="ls -al"
alias dr="cd hyprdots"
alias autoclean="./.scripts/cleanup.sh"
alias wl="./.scripts/wal.sh"
alias bt="bluetuith"
alias mpv=" mpv --player-operation-mode=pseudo-gui "
alias up="sudo pacman -Syyu --noconfirm --needed"

#import pywal colors
(cat ~/.cache/wal/sequences &)

#plugins
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

sh ~/.scripts/fet.sh

PS1="%F{145}󰣇 %F{153}%(5~|%-1~/⋯/%3~|%4~)%F{245} ↣%{$reset_color%}%b "


# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="my"

export BASIC_CONFIG_DIR="$HOME/.basic_config"
alias update_basic_config='cd "$BASIC_CONFIG_DIR" && git pull && $BASIC_CONFIG_DIR/install'

alias cd='pushd'
setopt PUSHD_SILENT

alias l='ls'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -lsA'
alias lsd='ls -ld *(/)'                 # only show directories
alias lad='ls -ld .*(/)'                # only show dot-directories
alias lsa='ls -a .*(.)'                 # only show dot-files
alias lsd='ls -d *(/)'                  # only show directories
alias lse='ls -d *(/^F)'                # only show empty directories
alias lsx='ls -l *(*) | head'           # only show executables
alias lssuid='ls -l *(s,S) | head'      # only show suid-files
alias lsbig='ls -lSh *(.) | head'       # display the biggest files
alias lssmall='ls -Sl *(.) | tail'      # display the smallest files
alias lsnew='ls -rtl *(.) | tail'       # display the newest files
alias lsold='ls -rtl *(.) | head'       # display the oldest files

alias mount="mount -v"
alias umount="umount -v"

alias h='history'
alias s='sudo -s '

alias grep="grep --color=always"
alias df="df -h"
alias dm1="du -h --max-depth=1"
alias dm2="du -h --max-depth=2"

# No correction here
alias mv='nocorrect mv -vi'
alias cp='nocorrect cp -vi'
alias mkdir='nocorrect mkdir -v'
alias scp='nocorrect scp'

alias pacman='pacman-color'

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git django)

source $ZSH/oh-my-zsh.sh

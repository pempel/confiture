export ZSH=/Users/pempel/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

eval `boot2docker shellinit 2>/dev/null`

alias ls="ls -FGlAhp"
alias ..="cd ../"
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."
alias mkdir="mkdir -pv"

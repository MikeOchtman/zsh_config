#! /usr/bin/zsh

lias ls="eza"
alias ls="eza --color=auto --group-directories-first"
alias lsl="eza -la"
alias lsf="lsl | fzf"
alias cat="batcat"
alias q=exit

alias rmi="rm -i"
alias cpi="cp -i"
alias rmdiri="rmdir -i"

alias .="pwd"

alias fzfp="fzf --style full --preview 'head -n 20 {}'"

export FZF_DEFAULT_OPTS=" \
                        --layout reverse \
                        --exact \
                        --multi \
                        --inline-info \
                        --height -40% \
                        --border \
                        "

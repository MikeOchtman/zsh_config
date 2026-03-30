#! /usr/bin/zsh

alias ls="eza --color=auto --group-directories-first "
alias lsl="ls -la "
alias lsf="lsl | fzfp"
alias cat="batcat"
alias q=exit

alias rmi="rm -i"
alias cpi="cp -i"
alias rmdiri="rmdir -i"
alias ..="z .."
alias z..="z .."

alias dir="tree -aC -L 2"

# alias fzfp="eza -la | fzf --style full --preview  \
#  'batcat --line-range 1:10 --wrap never "$(awk {print \$NF} <<< {})"'"

alias fzfp="eza -a | fzf --preview 'batcat --line-range 1:10 --wrap never {}'"


export FZF_DEFAULT_OPTS=" \
                         --layout reverse \
                         --exact \
                         --multi \
                         --inline-info \
                         --height -40% \
                         --border \
                         "


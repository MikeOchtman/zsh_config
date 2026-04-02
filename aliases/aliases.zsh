#! /etc/env zsh

alias ls="eza --icons=always --group-directories-first --header "
alias lsc="ls --color=always "
alias lsl="ls -la "
# alias lsf="lsl | fzf"
alias cat="batcat "
alias q=exit

alias rmi="rm -i"
alias cpi="cp -i"
alias rmdiri="rmdir -i"
alias ..="z .."
alias z..="z .."

alias dir="tree -aC -L 2"

# alias fzfp="eza -la | fzf --style full --preview  \
#  'batcat --line-range 1:10 --wrap never "$(awk {print \$NF} <<< {})"'"

# alias fzfp="eza -lA | fzf --preview 'batcat --line-range 1:30 --wrap never {-1}'"
# alias look="find . -maxdepth 1 -type f | fzf --preview 'batcat --line-range 1:30 --wrap never {}'"


export FZF_DEFAULT_OPTS=" \
                         --layout reverse \
                         --exact \
                         --multi \
                         --inline-info \
                         --height -50% \
                         --border \
                         "


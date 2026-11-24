#!/usr/bin/env zsh

alias ls="eza --icons=always --group-directories-first --header "
alias lsc="ls --color=always "
alias lsl="ls -la "
# alias lsf="lsl | fzf"

alias q=exit

alias rmi="rm -i"
alias cpi="cp -i"
alias rmdiri="rmdir -i"
alias ..="z .."
alias z..="z .."

alias dir="tree -aC -L 2"

# bat or batcat mean different things depending on the distro
case $DISTRO_ID in
  "ubuntu"|"debian")
    alias cat="batcat "
    ;;
    "arch"|"manjaro"|"fedora"|"opensuse"|"gentoo"|"void")
    alias cat="bat "
    ;;
  *)
    alias cat="bat "
    ;;
esac

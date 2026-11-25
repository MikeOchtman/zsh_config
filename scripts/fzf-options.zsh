#!/usr/bin/env zsh
# fzf features

# install zsh fzf plugin
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# set up the preview string for fzf
local f_files="[[ -f {-1} ]] && cat --color=always --line-range 1:30 {-1}"
local f_dirs="[[ -d {-1} ]] && tree -CL 2 {-1} || ls -F {-1}"
local f_other='head -n 20 {-1}'

local preview_cmd="\"$f_files || $f_dirs || $f_other\""

# Build options as an array for modularity and to avoid quoting issues
local fzf_opts=(
    --smart-case
    --exact
    --ansi
    --height=40%
    --info=inline
    --border=rounded
    --highlight-line
    --multi
    "--preview=$preview_cmd"
)

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/"'

#bat_cmdi Join array into a single string for the environment variable
export FZF_DEFAULT_OPTS="--layout reverse --ansi --height=80% ${(j: :)fzf_opts}"


# improve zoxide zi and fzf integration above the default
zid() {
  local dir
  dir=$(zoxide query -l | fzf --preview 'tree -C {} | head -20')
  [ -n "$dir" ] && cd "$dir"
}


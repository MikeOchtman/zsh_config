#!/usr/bin/env zsh
# fzf features

# install zsh fzf plugin
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Detect the best available previewer for files (batcat on Debian/Ubuntu, bat elsewhere)
local bat_cmd
bat_cmd=$(command -v batcat || command -v bat || echo "cat")
local has_tree=$(command -v tree >/dev/null && echo 1 || echo 0)

# set up the preview string for fzf
local f_files="[[ -f {-1} ]] && $bat_cmd --color=always --line-range 1:30 {-1}"
local f_dirs="[[ -d {-1} ]] && $((has_tree)) && tree -CL 2 {-1} || ls -F {-1}"
local f_other='head -n 20 {-1}'

local preview_cmd="$f_files || $f_dirs || $f_other"

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
    "--preview='$preview_cmd'"
)

# Join array into a single string for the environment variable
export FZF_DEFAULT_OPTS="${(j: :)fzf_opts}"

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/"'

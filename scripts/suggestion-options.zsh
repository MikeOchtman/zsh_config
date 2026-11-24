#!/usr/bin/env zsh

# options to improve auto-suggestions
# source after plugin is loaded

ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7,underline'
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# match_prev_cmd is faster than 'completion' and very accurate.
# It suggests based on the command you usually run AFTER the one you just finished.
ZSH_AUTOSUGGEST_STRATEGY=(history match_prev_cmd completion)

# Note: bindkey works here because Zsh allows binding to widgets 
# that are defined later in the same session initialization.
bindkey '^ ' autosuggest-accept

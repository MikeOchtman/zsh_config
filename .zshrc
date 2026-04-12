#!/usr/bin/env zsh

typeset -Ug fpath=($ZDOTDIR/plugins/zsh-completions/src $ZDOTDIR/zsh-functions $fpath)

source $ZDOTDIR/scripts/autoloads
source $ZDOTDIR/scripts/zsh-history
source $ZDOTDIR/scripts/options
source $ZDOTDIR/zsh-functions/zsh-functions

# 1. Load completions first (fpath is already set above)
source $ZDOTDIR/plugins/zsh-completions/zsh-completions.plugin.zsh

# 2. Initialize external interactive tools
eval "$(zoxide init zsh)"
source $ZDOTDIR/scripts/fzf-options.zsh
# 3. Load your own aliases and prompts
source $ZDOTDIR/aliases/aliases.zsh
source $ZDOTDIR/scripts/prompts
# 4. Load Autosuggestions (and its configurations)
source $ZDOTDIR/scripts/suggestion-options.zsh
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# 5. Syntax highlighting MUST be the last thing sourced to 
# correctly highlight all widgets and aliases defined above.
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
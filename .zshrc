#!/usr/bin/env zsh

source $ZDOTDIR/scripts/history

fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)
fpath=($ZDOTDIR/zsh-functions $fpath)

source $ZDOTDIR/scripts/options
source $ZDOTDIR/scripts/autoloads

# load plugins
source $ZDOTDIR/completion/completion.zsh
source $ZDOTDIR/plugins/zsh-completions/zsh-completions.plugin.zsh
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $ZDOTDIR/scripts/fzf-options

source $ZDOTDIR/aliases/aliases.zsh

source $ZDOTDIR/scripts/prompts



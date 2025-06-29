#! /usr/bin/zsh


source $ZDOTDIR/scripts/history



fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)


# load plugins
source $ZDOTDIR/completion/completion.zsh
source $ZDOTDIR/plugins/zsh-completions/zsh-completions.plugin.zsh
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZDOTDIR/aliases/aliases.zsh

source $ZDOTDIR/scripts/prompts

source <(fzf --zsh)

eval "$(zoxide init zsh)"



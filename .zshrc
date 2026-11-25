#!/usr/bin/env zsh

# find out what distro we're running on
if [[ -f /etc/os-release ]]; then
  source /etc/os-release
  export DISTRO=$NAME
  export DISTRO_VERSION=$VERSION_ID
  export DISTRO_CODENAME=$VERSION_CODENAME
  export DISTRO_PRETTY_NAME=$PRETTY_NAME
  export DISTRO_ID=$ID
fi  


typeset -Ug fpath=($ZDOTDIR/plugins/zsh-completions/src $ZDOTDIR/zsh-functions $fpath)

source $ZDOTDIR/scripts/autoloads
source $ZDOTDIR/scripts/zsh-history
source $ZDOTDIR/scripts/options
#source $ZDOTDIR/zsh-functions/zsh-functions
eval "$(dircolors -b $ZDOTDIR/scripts/dircolors)"

#1. Load your own aliases and prompts
source $ZDOTDIR/aliases/aliases.zsh

# 2. Load completions first (fpath is already set above)
source $ZDOTDIR/completion/completion.zsh


# 3. Initialize external interactive tools
eval "$(zoxide init zsh)"
source $ZDOTDIR/scripts/fzf-options.zsh

source $ZDOTDIR/scripts/prompts
# 4. Load Autosuggestions (and its configurations)
source $ZDOTDIR/scripts/suggestion-options.zsh
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# 5. Syntax highlighting MUST be the last thing sourced to 
# correctly highlight all widgets and aliases defined above.
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

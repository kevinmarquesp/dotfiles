source ~/.dotfiles/_home/globals.sh

# OH MY ZSH ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

export BAT_THEME="Nord" # Theme for bat
export ZSH="$HOME/.oh-my-zsh"

DISABLE_AUTO_UPDATE="true"
ZSH_THEME="arrow"

plugins=(
    zsh-syntax-highlighting
    zsh-autosuggestions
    git
)

source $ZSH/oh-my-zsh.sh





# ALIASSES AND KEYBINDINGS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# List files and folders
alias la="colorls -lhX -AogG --sd --color=auto"
alias ls="colorls -lhX -1 --color=auto"


# - Tab complete for ZSH

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)	# Include hidden files.


# - Vim keys

# Vim keys in tabcomplete
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Vim mode in ZSH
bindkey -v
export KEYTIMEOUT=1

# Edit line in vim with ctrl-p
autoload edit-command-line; zle -N edit-command-line
bindkey '^p' edit-command-line




[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

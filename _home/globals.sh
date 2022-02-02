# PATH CONFIG ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PATH=/bin

# PATH locales list
PATH_LOCALE=(
    "/usr/local/sbin"
    "/usr/local/bin"
    "/usr/bin"

    "/usr/lib/jvm/default/bin"
    "/usr/bin/vendor_perl"
    "/usr/bin/site_perl"
    "/usr/bin/core_perl"

    "$HOME/.local/share/gem/ruby/3.0.0/bin"
    "$HOME/.dotfiles/scripts"
    "$HOME/.local/app_images"
    "$HOME/.local/bin"
    "$HOME/.cargo/bin"
    "$HOME/bin"
)

# Append each PATH locale in PATH variable
for i in "${PATH_LOCALE[@]}"; do
    PATH+=":$i"
done

export PATH





# ALIASSES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# - Exports

export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33'
export EDITOR="nvim"


# - Aliasses

alias grep="grep --colour=auto"
alias tree="tree --dirsfirst -F"
alias sublime="/opt/sublime_text/sublime_text"


# Git helpers
alias gitl="git log --oneline"
alias gits="git status"
alias gitm="git checkout main"
alias gitc="git checkout"
alias gitb="git branch"

# Development
alias neofetch="neofetch --ascii ~/.dotfiles/_config/neofetch/anime_ascii_art"
alias tmuxls="la ~/.config/tmuxinator/"
alias pyserver="python -m http.server 3000"
alias r="ranger"

# Fuzzy file finder
alias fzf="fzf --border sharp --margin 10% --padding 5% --info inline --prompt 'SEARCH: ' --pointer '**' --ansi --color 'bg+:-1,pointer:green,fg+:green,hl:yellow,border:blue'"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load omarchy-zsh configuration
[[ -f /usr/share/omarchy-zsh/shell/zoptions ]] && source /usr/share/omarchy-zsh/shell/zoptions
[[ -f /usr/share/omarchy-zsh/shell/all ]] && source /usr/share/omarchy-zsh/shell/all

# --- Personal config ---

# zsh plugin manager configs
source ~/.config/zinit/config

eval "$(direnv hook zsh)"

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz compinit && compinit

# Aliases
alias cl='clear'
alias l='eza -lh --group-directories-first --icons=auto'
alias k='kubectl'
alias py='python'
alias v='nvim'
alias path='echo $PATH | tr ":" "\n"'

alias ..='zd ./..'
alias ...='zd ./../..'
alias "cd .."='zd ./..'
alias "cd ..."='zd ./../..'



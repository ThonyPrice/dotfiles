# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load Omarchy's shell config: from the omarchy-zsh package on the laptop, from
# an omadots clone on servers (`dotfiles server sync` links it to ~/.config/shell)
if [[ -d /usr/share/omarchy-zsh/shell ]]; then
  _omarchy_shell=/usr/share/omarchy-zsh/shell
else
  _omarchy_shell=~/.config/shell
fi
[[ -f $_omarchy_shell/zoptions ]] && source $_omarchy_shell/zoptions
[[ -f $_omarchy_shell/all ]] && source $_omarchy_shell/all
unset _omarchy_shell

# Servers: the hourly `dotfiles server sync` failed, so this box is drifting
[[ -f ~/.local/state/dotfiles/sync-error ]] &&
  print -P "%F{yellow}dotfiles sync failed:%f $(<~/.local/state/dotfiles/sync-error)"

# --- Personal config ---

# zsh plugin manager configs
source ~/.config/zinit/config

command -v direnv &>/dev/null && eval "$(direnv hook zsh)"

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz compinit && compinit

# Aliases
alias cl='clear'
alias l='eza -lh --group-directories-first --icons=auto'
alias k='kubectl'
alias py='python'
alias v='nvim'
alias da='direnv allow'
alias path='echo $PATH | tr ":" "\n"'
alias clr='claude --resume'
alias cwt='./scripts/create-worktree.sh'

# gcloud auth convenience
alias gauth='gcloud auth login'
alias gadc='gcloud auth application-default login'

alias ..='zd ./..'
alias ...='zd ./../..'
alias "cd .."='zd ./..'
alias "cd ..."='zd ./../..'

# Revive's block: resumes the agent a herdr-core terminal lost to a reboot.
# Only where the homelab agent role installs it; does nothing elsewhere.
if [[ -f ~/.local/share/herdr-revive/.zshrc ]]; then
  source ~/.local/share/herdr-revive/.zshrc
fi

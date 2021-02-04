# FISH CONFIG

set theme_color_scheme gruvbox

# Erase the default fish_mode_prompt, which adds a vi mode indicator to the left of your prompt
function fish_mode_prompt; end
# turn on vi mode when the shell starts
fish_vi_key_bindings
# Integrate vi yank to primary clip board
bind yy fish_clipboard_copy
bind Y fish_clipboard_copy
bind p fish_clipboard_paste

# Aliases
alias emacs='open /Applications/Emacs.app $1'

alias vim='nvim'
alias python='python3'
alias cl='clear'

alias gs='git status'
alias gc='git commit -m'
alias gp='git push'
alias ga='git add'
alias gd='git diff'

alias l='ls -la'

alias fix-audio='sudo killall -9 coreaudiod'

# Production
alias dc-web02-g30='ssh thpr01@172.28.197.11'
alias dc-web02-vv1='ssh thpr01@172.16.128.11'
alias dc-web03-vv1='ssh thpr01@172.16.128.12'

# Staging
alias dc-tst-web02-vv1='ssh thpr01@172.16.184.13'
alias dc-tst-web02-g30='ssh thpr01@172.29.40.10'
alias dc-tst-web01-vv1='ssh thpr01@172.16.184.10'

alias docker-stop-all='docker stop (docker ps -a -q)'
alias docker-rm-all='docker rm (docker ps -a -q)'

export LANG=sv_SE.UTF-8
set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths

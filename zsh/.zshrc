# --- Config Layout ---

# Paths and Basics - Get zsh to run as expected
# Plugins - Add cool stuff
# Theming and Looks - Make it look great
# User Configuration - Set it and forget it
# Aliases - Save time and typing
# Default Settings and Options - Don't forget


############################
###   PATHS AND BASICS   ###
############################

# --- Zsh paths ---
# export PATH=$HOME/bin:/usr/local/bin:$PATH            # If you come from bash you might have to change your $PATH.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh                  # Fuzzy search, https://github.com/junegunn/fzf

# --- Environments ---
PATH="/usr/local/share/python/:$PATH"                   # Python
export PATH=$PATH:/usr/local/go/bin                     # Golang
export PATH=$PATH:/usr/local/Cellar/ruby/2.5.3/bin      # Export Ruby environment
export PATH="/usr/local/opt/node@4/bin:$PATH"
export PATH="/usr/local/opt/node@6/bin:$PATH"

# --- Source files ---
. /Users/thonyprice/.nix-profile/etc/profile.d/nix.sh
# tmux source-file ~/.tmux.conf                           # Source tmux conf


###################
###   PLUGINS   ###
###################
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git)

plugins=(zsh-256color)

plugins=(zsh-autosuggestions)

export ZSH=/Users/$USER/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

#############################
###   THEMING AND LOOKS   ###
#############################

# More themes at  https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dracula"

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# Specify autosuggestions style
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=3"

# Add syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable tab completion with collorls
source $(dirname $(gem which colorls))/tab_complete.sh

# --- Vim Mode ---

bindkey -v

bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

precmd() { RPROMPT="" }
function zle-line-init zle-keymap-select {
   VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
   RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
   zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

export KEYTIMEOUT=1

# --- #/Vim Mode ---


##############################
###   USER CONFIGURATION   ###
##############################

export LANG=sv_SE.UTF-8
export LC_ALL=en_US.UTF-8 
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

###################
###   ALIASES   ###
###################
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias vim='nvim'
alias cl='clear'
alias ls='colorls'              # Use colorls as default
alias lsl='colorls -lA --sd'    # Colorls all files as sorted list
alias lst='colorls --tree'      # Color ls in tree view

alias gs='git status'
alias gc='git commit -m'
alias gp='git push'
alias ga='git add'
alias gd='git diff'

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias sss="source ~/.zshrc"


#####################################
###   DEFAULT SETTINGS OPTIONS   ####
#####################################

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


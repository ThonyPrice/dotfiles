# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Add z-package for easy search of dir history
. /usr/local/bin/z.sh

############################
###   PATHS AND BASICS   ###
############################

# More themes at  https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh                      # zsh installation path
PATH="/usr/local/share/python/:$PATH"                   # Python
export PATH=$PATH:/usr/local/go/bin                     # Golang
export GOPATH=$HOME/work                                # Golang
export PATH=$PATH:/usr/local/Cellar/ruby/2.5.3/bin      # Export Ruby environment
tmux source-file ~/.tmux.conf                           # Source tmux conf

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Thony/Downloads/google-cloud-sdk/path.zsh.inc' ]; then 
  source '/Users/Thony/Downloads/google-cloud-sdk/path.zsh.inc'; 
fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/Thony/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then 
  source '/Users/Thony/Downloads/google-cloud-sdk/completion.zsh.inc'; 
fi
export PATH="/usr/local/opt/node@4/bin:$PATH"
export PATH="/usr/local/opt/node@6/bin:$PATH"

# Specify autosuggestions style
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=3"
# Add syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Enable tab completion with collorls
source $(dirname $(gem which colorls))/tab_complete.sh


#####################################
###   DEFAULT SETTINGS OPTIONS   ####
#####################################

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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

##############################
###   USER CONFIGURATION   ###
##############################

plugins=(git)
plugins=(zsh-256color)
plugins=(zsh-autosuggestions)

export LANG=sv_SE.UTF-8
export LC_ALL=en_US.UTF-8 
export LANG=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

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

alias ls='colorls'              # Use colorls as default
alias lsl='colorls -lA --sd'    # Colorls all files as sorted list
alias lst='colorls --tree'      # Color ls in tree view

alias gs='git status'
alias gc='git commit -m'
alias gp='git push'
alias ga='git add'

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

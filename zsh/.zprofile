#
# ~/.zprofile
#
# Note: do NOT source .zshrc from here — zsh already sources it automatically
# for interactive shells. Manually sourcing causes a double-load that re-runs
# init scripts (e.g. omarchy-zsh's `eval "$(try init ...)"`) against functions
# they previously defined, popping unexpected pickers.
#

# --- Personal configs ---

PATH=~/.local/bin:$PATH
PATH=~/.emacs.d/bin:$PATH

if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias e="emacsclient -nc"

export SOPS_AGE_KEY_FILE=$HOME/.config/age/keys.txt

fish_add_path /home/thony/.local/bin
fish_add_path /home/thony/.spicetify

direnv hook fish | source
starship init fish | source

# Working in this repo

Dotfiles for an Omarchy laptop, stowed with GNU Stow. `configs.list` names
the configs, `packages.list` the install scripts in `omarchy-packages/`, and
`bin/dotfiles` does the stowing.

## Servers: keep them in step

The homelab boxes also run part of this repo: everything in `servers.list`,
applied hourly by `dotfiles server sync` (see README.org, "Servers"). They
run Ubuntu, not Omarchy, so they drift silently unless a change considers
them.

Whenever you change shell, prompt, editor, terminal-multiplexer or herdr
config, or add a config or tool, check:

- Should the config be on the servers? Add it to or remove it from
  `servers.list`.
- Does it still load on a server? There is no `/usr/share/omarchy-zsh`,
  `~/.local/state/omarchy`, Hyprland or pacman there. Anything relying on
  those must be optional, the way `.zshrc` already chooses between
  `/usr/share/omarchy-zsh` and `~/.config/shell`.
- Does it need a tool the servers lack? Tools come from Ubuntu's packages in
  the homelab repo's `ansible/roles/dotfiles`; mention it so that role gets
  the matching change.

Say in your summary whether the servers are affected, even when they aren't.

## Checks

CI runs ShellCheck over executable scripts (not `zsh/` or `bash/`).

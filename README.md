# Dotfiles

Ansible playbook to configure and customize systems. 💻
The purpose is a single command to configure systems in an repeatable way.

The playbook is compatible with:
- Arch
- MacOS _(work in progress)_

# Description

First, check prerequisites.
Then, the playbook is bootstrapped by the `dotfiles.sh` command in `/bin/`.
The **dotfiles scripts does three things:**

1. Install Ansible (if not present)
2. Create `.ssh` directory and keys (if not present)
3. Run the Ansible playbook

## The Playbook

Depending on the host, the playbook run any of the roles:

- **base** - Configuration suitable for _any_ system.
- **workstation** - Configuration I want for non-server systems.

Both roles include tasks that:
- Configure the system
- Install all defined programs and software
- Symlink defined configurations (dotfiles)
- Configures all users

# Prerequisites

_The tasks need to be carried out manually before running the playbook._
_Future work should be done to automate these tasks within the Ansible play._

These are required for pulling Ansible packages used in the play.

``` sh
$ ansible-galaxy install -r requirements
```

# Post Playbook

_These tasks are required after the playbook to finalize some installation/configuration._
_Similar to the prerequisites, these should be automated within the playbook._

Finalize the Doom Emacs installation:

``` sh
$ ~/.emacs.d/bin/doom install
```

## Tooling To be Included

These tools are currently in a testing phase and might be included in the future.

- bluberry


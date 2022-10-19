## Prerequisites

Install ansible: `sudo dnf install ansible`

## Installation

_Note:_ it would be ideal to use `anisble-pull`, but there are some annoyances (such as `--ask-vault--pass` not working), so install with the following command:

```
git clone https://github.com/jeffreylouden/ansible/ ~/ansible
cd ~/ansible
ansible-playbook local.yml --ask-become-pass --ask-vault-pass
```

## Manual Installation Steps

### Gnome Extensions

Automatically installing (some) gnome extensions can be accomplished via `dnf`, but these extensions need to be manually configured.

### Brave

There doesn't seem to be a way (at least I can find yet) to automatically configure brave via ansible or the cli, so this needs to be manually configured.

## Testing

building docker images

Note: if you want to jump into the container, include `bash` after the end of the command.

```sh
docker build . -t local bash
```

Run local docker installation:

```sh
docker run --rm -it local
```

command to install everything

```sh
ansible-playbook local.yml --ask-become-pass --ask-vault-pass
```

## TODO

- [ ] add more catches for "Fedora" distribution (in case I want to experiment on other distros and still use ansible)
- [ ] add better checks if directories exist
- [ ] automatically install gnome extensions

## References

- [ThePrimeagen ansible configuration](https://github.com/ThePrimeagen/ansible)
- [LearnLinuxTV personal ansible](https://github.com/LearnLinuxTV/personal_ansible_desktop_configs)

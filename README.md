# Ansible configuration

## Prerequisites

### Install ansible

```
sudo dnf install ansible
```

## Installation

_Note:_ it would be ideal to use `anisble-pull`, but there are some annoyances (such as `--ask-vault--pass` not working), so install with the following command:

```
git clone https://github.com/jeffreylouden/ansible/ ~/ansible
cd ~/ansible
ansible-playbook local.yml --ask-become-pass --ask-vault-pass
```

### Tags

Included tasks make detailed use of tags to target specific installation stages. The `--list-tags` arg will list all available tags and tags can be passed as a csv list (e.g. `--tags "gnome,extensions"`)

## Manual Installation Steps

### Brave

There doesn't seem to be a way (at least I can find yet) to automatically configure brave via ansible or the cli, so this needs to be manually configured.

### Firmware Updates

Automatically running firmware update might be dangerous, so the following commands can be run manually if desired:

```
sudo fwupdmgr get-devices
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update
```

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

## References

- [ThePrimeagen ansible configuration](https://github.com/ThePrimeagen/ansible)
- [LearnLinuxTV personal ansible](https://github.com/LearnLinuxTV/personal_ansible_desktop_configs)

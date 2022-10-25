# Ansible configuration

## Installation

1. [Install Ansible](https://www.ansible.com/). Since this is currently [Fedora](https://getfedora.org/)-based, `sudo dnf install ansible`.

2. Create a [vault password file](https://docs.ansible.com/ansible/latest/user_guide/vault.html#storing-passwords-in-files)

3. Run the following:

```
ansible-pull --url https://github.com/jeffreylouden/ansible --ask-become-pass --vault-password-file [YOUR_VAULT_PASSWORD_FILE]
```

### Tags

Included tasks make detailed use of tags to target specific installation stages. The `--list-tags` arg will list all available tags and tags can be passed as a csv list (e.g. `--tags "gnome,extensions"`)

## Manual Installation Steps

### Brave

There doesn't seem to be a way (at least I can find yet) to automatically configure brave via ansible or the cli, so this needs to be manually configured.

### Music Production

#### [Tukan Plugins](https://github.com/TukanStudios/TUKAN_STUDIOS_PLUGINS)

Incredible (**and free!**) plugins for [Reaper](https://www.reaper.fm/) that emulate classic studio gear. [Support his continued work on Patreon](https://www.patreon.com/tukanstudios).

Follow [these instructions](https://stash.reaper.fm/v/43504/TUKANPLUGINS.png) or watch [this video](https://www.youtube.com/watch?v=BJI52lUZxJU) to install them via Reapack.

#### [VCV Rack](https://vcvrack.com/)

Cross-platform modular system. The pro version requires login to access, so installing via ansible won't currently work.

### Additional Applications

- [Zoom](https://support.zoom.us/hc/en-us/articles/204206269-Installing-or-updating-Zoom-on-Linux) has pretty solid linux support, but isn't available in Fedora's core repostories and the Flatpak version is consistently behind. Follow the link above to install it manually.

### Firmware Updates

Automatically running firmware update might be dangerous, so the following commands can be run manually if desired:

```
sudo fwupdmgr get-devices
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update
```

## Testing

### Build local docker image

```sh
docker build . -t local
```

### Run ansible-playbook in local docker container

```sh
docker run --rm -it local
```

_Note:_ if you want to jump into the container, include `bash` after the end of the command:

```sh
docker run --rm -it local bash
```

## References

- [ThePrimeagen ansible configuration](https://github.com/ThePrimeagen/ansible)
- [LearnLinuxTV personal ansible](https://github.com/LearnLinuxTV/personal_ansible_desktop_configs)

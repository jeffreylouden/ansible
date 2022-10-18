## References

- [ThePrimeagen ansible configuration](https://github.com/ThePrimeagen/ansible)
- [LearnLinuxTV personal ansible](https://github.com/LearnLinuxTV/personal_ansible_desktop_configs)

## Scratch

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
ansible-playbook local.yml -K
```

## TODO

- [ ] add more catches for "Fedora" distribution (in case I want to experiment on other distros and still use ansible)
- [ ] add better checks if directories exist
- [ ] automatically install gnome extensions

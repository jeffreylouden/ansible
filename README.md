## References

- [ThePrimeagen ansible configuration](https://github.com/ThePrimeagen/ansible)
- [LearnLinuxTV personal ansible](https://github.com/LearnLinuxTV/personal_ansible_desktop_configs)

## Scratch

building docker images

Note: the `bash` isn't required, but it drops into the container after building, which is usually very helpful.

```sh
docker build . -t local bash
```

Run local docker installation:

```sh
docker run --rm -it local bash
```

- add local host entry for raspberry pi (247) and pi hole (99)

command to install everything

```sh
ansible-playbook local.yml -K
```

## TODO

- [ ] clean up tags into csv list
- [ ] rename tasks with "area | task | detail" schema
- [ ] add more catches for "Fedora" distribution (in case I want to experiment on other distros and still use ansible)
- [ ] how can I automatically install:
  - [ ] chrome extensions?
  - [ ] gnome extensions?
- [ ] add better checks if directories exist

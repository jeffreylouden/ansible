## References

- [ThePrimeagen ansible configuration](https://github.com/ThePrimeagen/ansible)

## Scratch

building docker images

Note: the `bash` isn't required, but it drops into the
container after building, which is usually very helpful.

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

# Infinit Storage Platform in Docker


This is an Ubuntu-derived image providing executables for the [Infinit Storage Platform](https://infinit.sh/).

The executables are installed from the official Infinit apt repository.

This image was originally forked from https://github.com/geo-data/infinit-docker.

## Usage

For servers

```
docker run -it --net=host --privileged \
  -e "USER=user" \
  -e "NETWORK=network" \
  -e "MODE=server" \
  -e "VOLUME=volume" \
  -v /srv/data/infinit:/infinit \
  -v /var/lib/infinit:/infinit_storage \
  nextjournal/infinit-docker
```

For clients

```
docker run -it --net=host --privileged \
  -e "USER=user" \
  -e "NETWORK=network" \
  -e "VOLUME=volume" \
  -v /srv/data/infinit:/infinit \
  -v /mnt/infinit:/infinit_mount:shared \
  nextjournal/infinit-docker
```

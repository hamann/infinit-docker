# Infinit Storage Platform in Docker


This is an Ubuntu-derived image providing executables for the [Infinit Storage Platform](https://infinit.sh/).

The executables are installed from the official Infinit apt repository.

This image was originally forked from https://github.com/geo-data/infinit-docker.

## Usage

First you must have a created storage area, i.e.:

```
docker run --rm -v /var/lib/infinit:/infinit_storage nextjournal/infinit-docker infinit-storage --create --filesystem --name local --path /infinit_storage
```

`docker run -it --net=host --privileged \
  -e "USER=user" \
  -e "NETWORK=network" \
  -e "VOLUME=volume" \
  -v /srv/data/infinit:/etc/infinit \
  -v /var/lib/infinit:/infinit_storage \
  -v /mnt/infinit:/infinit_mount:shared \
  nextjournal/infinit-docker
`

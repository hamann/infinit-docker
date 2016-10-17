# Infinit Storage Platform in Docker


This is an Ubuntu-derived image providing executables for the [Infinit Storage Platform](https://infinit.sh/).

The executables are installed from the official Infinit apt repository.

Apart from that

This image was originally forked from https://github.com/geo-data/infinit-docker.
## Usage

Run the image along these lines:

    docker run -it --rm --privileged geodata/infinit

Note you need the `--privileged` option to allow mounting of FUSE filesystems by
the container.

Then follow the
[Getting Started](https://infinit.sh/get-started#create-infrastructure)
instructions provided by Infinit.  Note you can skip the *Installation* and
*Basic Test* section as this image provides a working installation.  You can run
multiple containers to simulate multiple clients in a storage infrastructure.

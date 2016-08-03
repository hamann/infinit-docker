# Infinit Storage Platform in Docker

[![](https://imagelayers.io/badge/geodata/infinit:latest.svg)](https://imagelayers.io/?images=geodata/infinit:latest)

This is an Ubuntu derived image providing executables for the
[Infinit Storage Platform](https://infinit.sh/).  The executables are installed
from the official Infinit apt repository.

Each branch in the git repository corresponds to a supported Infinit version
(e.g. `0.6.1`) with the master branch following the latest release. These branch
names are reflected in the image tags on the Docker Hub.

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

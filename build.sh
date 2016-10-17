#!/usr/bin/env bash

##
# Build the docker image
#

# Exit on any non-zero status.
trap 'exit' ERR
set -E

# The APT dependencies for building the image.
build_dependencies="software-properties-common apt-transport-https"

# Install the build dependencies.
apt-get update -y
apt-get install -y $build_dependencies

# Install the runtime dependencies.
apt-get install -y fuse

# Add the infinit APT repository.
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3D2C3B0B
add-apt-repository "deb https://debian.infinit.sh/ trusty main"

# Install infinit.
apt-get update -y
apt-get install -y infinit

# Remove the build dependencies.
apt-get remove -y $build_dependencies

# Clean up APT when done.
apt-get autoremove -y
apt-get clean -y
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

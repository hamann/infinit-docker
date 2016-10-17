##
# geodata/infinit
#
# Executables for the Infinit Storage Platform <https://infinit.sh/>.
#

FROM ubuntu:14.04.5

MAINTAINER Joshua Sierles <joshua@nextjournal.com>

# Install the application.
ADD . /tmp/build/
RUN /tmp/build/build.sh

#! /bin/sh

ENV INFINIT_HOME /infinit
ENV PORT 10400

ENV USER nextjournal
ENV NETWORK nextjournal
ENV VOLUME nextjournal

# Expose a port for use with mounting a docker-volume

EXPOSE $PORT

# Add the infinit executables to the PATH.
ENV PATH="/opt/infinit/bin:${PATH}"

# The default command is to mount a volume specified in the VOLUME env variable
CMD ["sh", "entrypoint.sh"]

FROM ubuntu:14.04.5

MAINTAINER Joshua Sierles <joshua@nextjournal.com>

RUN apt-get update -y && apt-get install -y software-properties-common apt-transport-https fuse
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3D2C3B0B && \
    add-apt-repository "deb https://debian.infinit.sh/ trusty main"
RUN apt-get update -y && apt-get install -y infinit

RUN apt-get remove -y software-properties-common apt-transport-https && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD . /build

ENV PATH "/opt/infinit/bin:${PATH}"
ENV INFINIT_HOME /infinit
VOLUME /infinit

CMD ["sh", "/build/run.sh"]

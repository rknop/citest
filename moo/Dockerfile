FROM rknop/devuan-daedalus-rknop

LABEL maintainer="Rob Knop <raknop@lbl.gov>"

SHELL ["/bin/bash", "-c"]

RUN DEBIAN_FRONTEND="nonintearctive" TZ="UTC" \
    apt-get update \
    && apt-get -y upgrade \
    && DEBIAN_FRONTEND="nonintearctive" TZ="UTC" apt-get -y install -y \
          cowsay curl wget \
    && apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /tmp/moo
WORKDIR /tmp/moo

COPY testing.sh /tmp/moo/testing.sh

FROM rknop/devuan-daedalus-rknop

LABEL maintainer="Rob Knop <raknop@lbl.gov>"

SHELL ["/bin/bash", "-c"]

RUN DEBIAN_FRONTEND="nonintearctive" TZ="US/Pacific" \
    apt-get update && \
    apt-get -y upgrade && \
    DEBIAN_FRONTEND="nonintearctive" TZ="US/Pacific" apt-get -y install -y \
        cowsay curl wget

RUN mkdir /tmp/moo
WORKDIR /tmp/moo

COPY testing.sh /tmp/moo/testing.sh

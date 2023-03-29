FROM rknop/devuan-chimaera-rknop

MAINTAINER Rob Knop <raknop@lbl.gov>

SHELL ["/bin/bash", "-c"]

RUN DEBIAN_FRONTEND="nonintearctive" TZ="US/Pacific" \
    apt-get update && \
    apt-get -y upgrade && \
    DEBIAN_FRONTEND="nonintearctive" TZ="US/Pacific" apt-get -y install -y \
        cowsay


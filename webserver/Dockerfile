FROM rknop/devuan-daedalus-rknop

LABEL maintainer="Rob Knop <raknop@lbl.gov>"

SHELL ["/bin/bash", "-c"]

RUN DEBIAN_FRONTEND="nonintearctive" TZ="US/Pacific" \
    apt-get update && \
    apt-get -y upgrade && \
    DEBIAN_FRONTEND="nonintearctive" TZ="US/Pacific" apt-get -y install -y apache2

RUN echo "This is only a test." >> /var/www/html/test.txt

ENTRYPOINT [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]

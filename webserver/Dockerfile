FROM rknop/devuan-daedalus-rknop AS base

LABEL maintainer="Rob Knop <raknop@lbl.gov>"

SHELL ["/bin/bash", "-c"]

RUN DEBIAN_FRONTEND="nonintearctive" TZ="UTC" \
    apt-get update && \
    apt-get -y upgrade && \
    DEBIAN_FRONTEND="nonintearctive" TZ="UTC" apt-get -y install -y python3 && \
    apt-get -y autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    

# ======================================================================

FROM base AS build

RUN apt-get update && \
    DEBIAN_FRONTEND="nonintearctive" TZ="UTC" apt-get -y install \
      python3-pip \
      python3-venv

RUN mkdir /venv
RUN python3 -mvenv /venv

RUN source /venv/bin/activate \
    && pip install flask gunicorn

# ======================================================================

FROM base AS webserver

COPY --from=build /venv/ /venv/
ENV PATH=/venv/bin:$PATH

RUN mkdir /work
WORKDIR /work

COPY webserver.py /work

ENTRYPOINT [ "gunicorn", "-w", "4", "-b", "0.0.0.0:80", "--timeout", "0", "webserver:app" ]

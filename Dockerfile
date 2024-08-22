FROM ubuntu:24.04

RUN set -eux; \
  apt-get update ; \
  apt-get upgrade -y

RUN set -eux ; \
  apt-get update ; \
  apt-get install -y \
  curl ca-certificates

RUN set -eux ; \
  apt-get update ; \
  apt-get install -y postgresql-common

RUN set -eux ; \
  YES=box /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh

RUN set -eux ; \
  apt-get update ; \
  apt-get install -y postgresql-client-16

RUN set -eux ; \
  apt-get update ; \
  apt-get install -y pv

COPY pgmover /usr/local/bin
COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]

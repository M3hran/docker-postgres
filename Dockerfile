    
FROM postgres:latest
MAINTAINER Martin Taheri <m3hran@gmail.com>
LABEL Description="Postgres with postgis extension Image"

COPY bin/clean_install.sh /usr/local/bin/clean_install.sh

# Install packages
RUN apt-get -q update \
    && apt-get upgrade -y -o Dpkg::Options::="--force-confold"

RUN clean_install.sh --no-install-recommends \
    postgis

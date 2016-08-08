FROM buildpack-deps:jessie-curl

ENV RANCHER_COMPOSE_VERSION 0.8.3
ENV RANCHER_COMPOSE_HOME /usr/lib/rancher-compose

ADD install-tools.sh /usr/local/bin/
RUN /usr/local/bin/install-tools.sh

ADD rancher-scripts/*.sh ${RANCHER_COMPOSE_HOME}/

VOLUME ${RANCHER_COMPOSE_HOME}

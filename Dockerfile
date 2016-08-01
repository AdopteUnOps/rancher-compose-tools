FROM buildpack-deps:jessie-curl

ENV RANCHER_COMPOSE_VERSION 0.8.5
ENV RANCHER_COMPOSE_HOME /usr/lib/rancher-compose

ADD rancher-scripts/*.sh ${RANCHER_COMPOSE_HOME}/
ADD install-tools.sh /usr/local/bin/

VOLUME ${RANCHER_COMPOSE_HOME}

CMD /usr/local/bin/install-tools.sh

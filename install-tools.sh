#/bin/bash
#download rancher-compose
curl "https://releases.rancher.com/compose/v${RANCHER_COMPOSE_VERSION}/rancher-compose-linux-amd64-v${RANCHER_COMPOSE_VERSION}.tar.gz" | tar zx --strip-components 2 -C ${RANCHER_COMPOSE_HOME}

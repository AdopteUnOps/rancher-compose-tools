#!/bin/bash
stack_to_deploy=$1
cd ${stack_to_deploy}
log=$($RANCHER_COMPOSE_HOME/rancher-compose up -d --upgrade --rollback)
if [[ $log =~ "Action [rollback] not available" ]] ; then
 echo "No rollback actions"
else
 echo $log
fi

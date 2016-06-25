#!/bin/bash
stack_to_deploy=$1
cd ${stack_to_deploy}
$RANCHER_HOME/rancher-compose up -d --upgrade --confirm-upgrade

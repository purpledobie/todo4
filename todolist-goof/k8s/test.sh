#!/usr/bin/env bash
MYDIR=$(dirname $0)

if [[ "$1" == "" ]]; then
  read -e -i "${DOCKER_ACCOUNT}" -p "Please enter your DockerHub user/account name: " input
  name="${input:-$DOCKER_ACCOUNT}"
else
  DOCKER_ACCOUNT=$1
fi

echo $DOCKER_ACCOUNT
cat $MYDIR/java-goof.yaml | envsubst


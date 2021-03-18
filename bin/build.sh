#!/bin/bash


if ! type "packer" > /dev/null ; then
  echo "Requires packer to build container, see: https://learn.hashicorp.com/tutorials/packer/getting-started-install"
  exit 1
fi

CONFIG=$1
WORKSPACE=$(pwd)

export ANSIBLE_VAULT_PASSWORD_FILE="${WORKSPACE}/.ansible-vault-password"

packer build ${WORKSPACE}/conf/ubuntu18-x86_64.json

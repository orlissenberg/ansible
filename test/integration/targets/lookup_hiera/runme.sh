#!/usr/bin/env bash

# http://www.linuxcommand.org/lc3_man_pages/seth.html
# set -eux

if [[ -f /usr/local/bin/hiera ]]
then
    export ANSIBLE_HIERA_BIN=/usr/local/bin/hiera
fi

export ANSIBLE_HIERA_CFG="$(PWD)/hiera.yaml"
export ANSIBLE_LOOKUP_PLUGINS="$(PWD)/../../../../lib/ansible/plugins/lookup"

ansible-playbook main.yml -v "$@"

# pip3 install voluptuous PyYAML cryptography jinja2

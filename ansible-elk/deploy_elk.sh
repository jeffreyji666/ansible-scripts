#!/bin/bash

if [ $# -ne 1 ]; then
        echo "./deploy_elk.sh ssh-key-path"
        exit 1
fi


ansible-playbook -i hosts/production --private-key=$1 -vvvv site.yml

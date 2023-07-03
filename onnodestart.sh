#!/bin/bash

date >> /tmp/CustomActions.log
hostname >> /tmp/CustomActions.log
id -u -n >> /tmp/CustomActions.log

cat<<EOF >> /etc/sssd/sssd.conf
simple_allow_users = $1
#simple_allow_users = tabata,naoto,test-tabata
#simple_allow_users = tabata,test-tabata
EOF

sudo systemctl restart sssd

sudo usermod -aG docker $1

#

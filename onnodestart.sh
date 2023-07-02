#!/bin/bash

date >> /tmp/CustomActions.log
hostname >> /tmp/CustomActions.log
id -u -n >> /tmp/CustomActions.log

cat<<EOF >> /etc/sssd/sssd.conf
simple_allow_users = $1
EOF

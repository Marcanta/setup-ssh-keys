#!/bin/bash

params=$1

jq -r 'to_entries | map(.value+{name: .key}) | map([.user, .port, .ip, .password, .name]) | .[] | @tsv' <<< $params |
  while IFS=$'\t' read -r user port ip password name; do
    echo "processing $name..."
#     sshpass -p $password ssh -o StrictHostKeyChecking=no -o ConnectTimeout=30 -p $port $user@$ip "mkdir ~/.ssh"
    sshpass -p $password scp -o StrictHostKeyChecking=no -o ConnectTimeout=30 -pr -P $port authorized_keys $user@$ip:~/.ssh/authorized_keys
  done

time=$(date)

echo "::set-output name=time::$time"

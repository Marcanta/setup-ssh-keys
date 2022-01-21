#!/bin/bash

params=$1
echo $params > config.json
ls
authorized_keys_path=$2

jq -r 'to_entries | map(.value+{name: .key}) | map([.user, .port, .ip, .password, .name]) | .[] | @tsv' config.json |
  while IFS=$'\t' read -r user port ip password name; do
    echo "processing $name..."
#     sshpass -p $password ssh -o StrictHostKeyChecking=no -o ConnectTimeout=30 -p $port $user@$ip "mkdir ~/.ssh"
    sshpass -p $password scp -o StrictHostKeyChecking=no -o ConnectTimeout=30 -pr -P $port $2 $user@$ip:~/.ssh/authorized_keys
  done

time=$(date)

echo "::set-output name=time::$time"

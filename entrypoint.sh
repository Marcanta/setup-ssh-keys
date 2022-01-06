#!/bin/bash

params=$1
authorized_keys=$2

jq -r 'to_entries | map(.value+{name: .key}) | map([.user, .port, .ip, .password, .name]) | .[] | @tsv' <<< $params |
  while IFS=$'\t' read -r user port ip password name; do
    echo "$port and $ip and $password and $name and $user"
    sshpass -p "$password" ssh -p $port $user@$ip "mkdir .ssh"
    sshpass -p "$password" scp -pr -P $port authorized_keys $user@$ip:~/.ssh/authorized_keys
  done

time=$(date)

echo "::set-output name=time::$time"

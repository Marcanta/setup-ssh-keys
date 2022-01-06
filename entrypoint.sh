#!/bin/bash

params=$1

# jq -r 'to_entries | map(.value+{name: .key}) | map([.user, .port, .ip, .password, .name]) | .[] | @tsv' <<< $params |
#   while IFS=$'\t' read -r user port ip password name; do
#     echo "processing $name...\n"
#     echo 'sshpass -p ${password} ssh -v -p ${port} ${user}@${ip} "mkdir ~/.ssh"'
#     sshpass -p ${password} ssh -v -p ${port} ${user}@${ip} "mkdir ~/.ssh"
#     echo "\n 2nd command, home: $HOME \n"
#     echo 'sshpass -p $password scp -prv -P $port authorized_keys $user@$ip:~/.ssh/authorized_keys'
#     sshpass -p $password scp -prv -P $port authorized_keys $user@$ip:~/.ssh/authorized_keys
#   done
sshpass -p "kkl98YHD56fedgh7654" ssh -o ConnectTimeout=30 -v -p 12749 tabmin@cataloguetest.tabuleo.com "mkdir ~/.ssh"
sshpass -p "kkl98YHD56fedgh7654" scp -o ConnectTimeout=30 -pr -P 12749 authorized_keys tabmin@cataloguetest.tabuleo.com:~/.ssh/authorized_keys

time=$(date)

echo "::set-output name=time::$time"

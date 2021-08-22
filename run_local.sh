#!/bin/sh

for i in `fly ips private | grep -v IP | awk -F" " '{print $3}'`
  do ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@$i "sh run.sh" &
done

wait

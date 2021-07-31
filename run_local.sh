#!/bin/sh

for i in `fly ips private | grep -v IP | awk -F" " '{print $3}'`
  do ssh -oStrictHostKeyChecking=no root@$i "sh run.sh" &
done

wait

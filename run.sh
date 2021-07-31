#!/bin/sh

set -e

k6 run -q --out json=out.json ./test.js > /dev/null
values=$(jq '. | select(.type=="Point" and .metric == "http_req_duration" and .data.tags.status >= "200") | .data.value' out.json)
avg=$(echo ${values} | jq -s 'add/length')
rounded_avg=`printf "%.0f" ${avg}`

echo ${FLY_REGION}: ${rounded_avg}ms

#!/bin/bash
awk 'NF==2 && $1=="0.0.0.0" {print $2}' hosts/alternates/fakenews-gambling-porn/hosts | rev | sort | uniq | rev > full_hosts
sed 's/[^a-zA-Z0-9.]\{1,\}/*/g' full_hosts | grep -v '[^a-zA-Z0-9.*]' > simplified_hosts


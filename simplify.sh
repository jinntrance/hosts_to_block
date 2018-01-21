#!/bin/bash
awk 'NF==2 && $1=="0.0.0.0" {print $2}' hosts/alternates/fakenews-gambling-porn/hosts | rev | sort | uniq | rev

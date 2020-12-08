#!/bin/bash
#bash one liner to get hostnames within a domain, reverse the ips and cut off unnecessary output

for ip in {0..255}; do nslookup 10.11.1.$ip 10.11.1.220 | grep -v "NXDOMAIN" | grep . | cut -f1,3 -d " ";  ip=+1; done | awk '{split($1,p,"."); print p[4] "." p[3] "." p[2] "." p[1], $2, $3}'

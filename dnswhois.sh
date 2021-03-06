#!/usr/bin/env bash

domain=$1
tldns=$(dig $(echo $domain | sed 's/.*\.//') ns +short | sed -n 2p); 
ns=$(dig @$tldns $domain +short); 
ns+=$(dig +noall @$tldns $domain ns +authority | awk '{print$5}'); 
printf "\nDELEGATION FOR - $domain \n"; 
for i in ${ns[@]}; 
  do printf "\nFQDN: $i - "; 
  ip=$(dig $i +short); printf "$ip\n"; 
  whois $ip | awk '/Organization/ || /NetRange/ || /descr/ {print$0}'; 
  done; 
printf "\n";

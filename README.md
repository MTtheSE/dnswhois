# dnswhois
Evaluates the ownership of the IPs used for the authoritative DNS for a domain. Very useful for white labelled DNS.

Process:
1. Pulls the delegation of the domain
2. Then a dig on each nameserver name to determine IP
3. Runs a whois on the IP, parsing out ownership fields for easier use.

To run a commercial domain, pass in a domain without a trailing "." to run a TLD, pass the TLD label with a trailing "."


Commercial Domain Example
```
$ dnswhois

Enter domain name..github.com

DELEGATION FOR - github.com 

FQDN: ns-520.awsdns-01.net. - 205.251.194.8
NetRange:       205.251.192.0 - 205.251.255.255
Organization:   Amazon.com, Inc. (AMAZON-4)

FQDN: ns-421.awsdns-52.com. - 205.251.193.165
NetRange:       205.251.192.0 - 205.251.255.255
Organization:   Amazon.com, Inc. (AMAZON-4)

FQDN: ns-1707.awsdns-21.co.uk. - 205.251.198.171
NetRange:       205.251.192.0 - 205.251.255.255
Organization:   Amazon.com, Inc. (AMAZON-4)

FQDN: ns-1283.awsdns-32.org. - 205.251.197.3
NetRange:       205.251.192.0 - 205.251.255.255
Organization:   Amazon.com, Inc. (AMAZON-4)

FQDN: dns1.p08.nsone.net. - 198.51.44.8
NetRange:       198.51.44.0 - 198.51.45.255
Organization:   NSONE Inc (NSONE)

FQDN: dns2.p08.nsone.net. - 198.51.45.8
NetRange:       198.51.44.0 - 198.51.45.255
Organization:   NSONE Inc (NSONE)

FQDN: dns3.p08.nsone.net. - 198.51.44.72
NetRange:       198.51.44.0 - 198.51.45.255
Organization:   NSONE Inc (NSONE)

FQDN: dns4.p08.nsone.net. - 198.51.45.72
NetRange:       198.51.44.0 - 198.51.45.255
Organization:   NSONE Inc (NSONE)
```

TLD Example
```
$ dnswhois

Enter domain name..it.

DELEGATION FOR - it. 

FQDN: r.dns.it. - 193.206.141.46
descr:          GARR-B Backbone and POPs
descr:          GARR routes

FQDN: s.dns.it. - 194.146.106.30
descr:          Internal distribution network for Netnod
descr:          $Id: inetnum:194.146.106.0-24,v 1.3 2010-05-20 11:15:45 nico Exp $
descr:          NETNOD-DB-LAN-GBG
descr:          $Id: route:194.146.106.0-24,v 1.3 2010-05-20 10:35:04 nico Exp $

FQDN: a.dns.it. - 194.0.16.215
descr:          Registry of ccTLD .it Anycast Service Network

FQDN: nameserver.cnr.it. - 194.119.192.34
descr:          Consiglio Nazionale delle Ricerche
descr:          CNUCE - Istituto del CNR
descr:          CNR-NET Italy

FQDN: dns.nic.it. - 192.12.192.5
NetRange:       192.12.192.0 - 192.12.194.255
Organization:   RIPE Network Coordination Centre (RIPE)
descr:          .it Registry - IIT-CNR
descr:          Istituto del Consiglio Nazionale Delle Ricerche
descr:          Via Giuseppe Moruzzi, 1
descr:          I-56124 Pisa
descr:          IIT-CNR - CCTLD IT

FQDN: m.dns.it. - 217.29.76.4
descr:          Milan Internet eXchange
descr:          MIX-EXT-SERVICES-76
```

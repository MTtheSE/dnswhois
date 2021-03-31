# dnswhois
Evaluates the ownership of the IPs used for the authoritative DNS for a domain. Very useful for white labelled DNS.

Process:
1. Pulls the delegation of the domain
2. Then a dig on each nameserver name to determine IP
3. Runs a whois on the IP, parsing out ownership fields for easier use.

To run a commercial domain, pass in a domain without a trailing "." to run a TLD, pass the TLD label with a trailing "."


Commercial Domain Example

$ dnswhois

Enter domain name..icann.org

DELEGATION FOR - icann.org 

FQDN: a.icann-servers.net. - 199.43.135.53
NetRange:       199.43.132.0 - 199.43.135.255
Organization:   ICANN (ICANN)

FQDN: b.icann-servers.net. - 199.43.133.53
NetRange:       199.43.132.0 - 199.43.135.255
Organization:   ICANN (ICANN)

FQDN: c.icann-servers.net. - 199.43.134.53
NetRange:       199.43.132.0 - 199.43.135.255
Organization:   ICANN (ICANN)

FQDN: ns.icann.org. - 199.4.138.53
NetRange:       199.4.138.0 - 199.4.138.255
Organization:   ICANN (ICANN)


TLD Example

$ dnswhois

Enter domain name..org.

DELEGATION FOR - org. 

FQDN: a0.org.afilias-nst.info. - 199.19.56.1
NetRange:       199.19.48.0 - 199.19.57.255
Organization:   Afilias, Inc. (AFILI-2)

FQDN: a2.org.afilias-nst.info. - 199.249.112.1
NetRange:       199.249.112.0 - 199.249.127.255
Organization:   Afilias, Inc. (AFILI-2)

FQDN: b0.org.afilias-nst.org. - 199.19.54.1
NetRange:       199.19.48.0 - 199.19.57.255
Organization:   Afilias, Inc. (AFILI-2)

FQDN: b2.org.afilias-nst.org. - 199.249.120.1
NetRange:       199.249.112.0 - 199.249.127.255
Organization:   Afilias, Inc. (AFILI-2)

FQDN: c0.org.afilias-nst.info. - 199.19.53.1
NetRange:       199.19.48.0 - 199.19.57.255
Organization:   Afilias, Inc. (AFILI-2)

FQDN: d0.org.afilias-nst.org. - 199.19.57.1
NetRange:       199.19.48.0 - 199.19.57.255
Organization:   Afilias, Inc. (AFILI-2)

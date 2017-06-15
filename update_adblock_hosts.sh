#!/bin/bash

OUTPUTDIR="/opt/adblock"
DNSMASQUSER="dnsmasq"

if ! [ -d ${OUTPUTDIR} ]
then
  mkdir ${OUTPUTDIR}
fi

wget -q https://raw.githubusercontent.com/notracking/hosts-blocklists/master/hostnames.txt -O ${OUTPUTDIR}/hostnames.txt
wget -q https://raw.githubusercontent.com/notracking/hosts-blocklists/master/domains.txt -O ${OUTPUTDIR}/domains.txt

chown -R ${DNSMASQUSER} /opt/adblock

service dnsmasq restart

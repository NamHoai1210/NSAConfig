#!/bin/sh
curl -s https://deb.frrouting.org/frr/keys.asc | apt-key add -
FRRVER="frr-stable"
echo deb https://deb.frrouting.org/frr $(lsb_release -s -c) $FRRVER | tee -a /etc/apt/sources.list.d/frr.list
apt update
apt install frr frr-pythontools

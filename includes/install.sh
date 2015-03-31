#!/bin/bash

echo "installing Hostapd/Mana Dependencies..."
# DEP HOSTAPD-MANA

apt-get -y install hostapd
apt-get -y install libnl1 libnl-dev libssl-dev

apt-get -y install libnl-dev libssl-dev #isc-dhcp-server tinyproxy  apache2 macchanger python-dnspython python-pcapy dsniff stunnel4

apt-get -y install gcc-4.7
apt-get -y install g++-4.7
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.7 40 --slave /usr/bin/g++ g++ /usr/bin/g++-4.7

echo "installing Hostapd/Mana..."
# INSTALL HOSTAPD-MANA
apt-get install -y mana-toolkit

cp /usr/lib/mana-toolkit/hostapd ./
cp /usr/lib/mana-toolkit/hostapd_cli ./

echo "..DONE.."
exit

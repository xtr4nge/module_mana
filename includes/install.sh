#!/bin/bash
echo
echo "installing Hostapd/Mana Dependencies..."
echo 

apt-get --yes install build-essential pkg-config git libnl-genl-3-dev libssl-dev

echo
echo "installing Hostapd/Mana..."
echo

git clone https://github.com/sensepost/hostapd-mana
cd hostapd-mana
make -C hostapd 

echo
echo "Copying Hostapd/Mana..."
echo

cd hostapd
cp hostapd ../../
cp hostapd_cli ../../

echo
echo "Cleaning Up..."
echo

cd ..
cd ..
rm -r hostapd-mana

echo "..DONE.."
exit

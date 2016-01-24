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
wget https://github.com/xtr4nge/hostapd-mana/archive/master.zip -O hostapd-mana.zip

unzip hostapd-mana.zip

cmd=`lsb_release -c |grep "jessie"`
if [[ ! -z $cmd ]]
then
    echo "--------------------------------"
    echo "ADDING: CONFIG_LIBNL32=y (Debian Jessie patch)"
    echo "--------------------------------"
    
    apt-get -y install libnl-3-dev libnl-genl-3-dev
    
    EXEC="s,^#CONFIG_LIBNL32=y,CONFIG_LIBNL32=y,g"
    sed -i $EXEC hostapd-mana-master/hostapd/.config
	
	EXEC="s,^#CONFIG_DEBUG_FILE=y,CONFIG_DEBUG_FILE=y,g"
    sed -i $EXEC hostapd-mana-master/hostapd/.config
    
    echo "[setup completed]"
    echo

fi

cd hostapd-mana-master/hostapd
make

cp hostapd ../../
cp hostapd_cli ../../

echo "..DONE.."
exit

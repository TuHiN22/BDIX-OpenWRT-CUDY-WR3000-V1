#!/bin/bash

# Update package
opkg update

#install packages
opkg install iptables-nft iptables-mod-nat-extra redsocks

#Then run this line
service redsocks stop && mv /etc/redsocks.conf /etc/redsocks.conf.bkp && cd /etc && wget https://github.com/TuHiN22/BDIX-OpenWRT-CUDY-WR3000-V1/raw/main/bdix.conf && mv /etc/init.d/redsocks /etc/init.d/redsocks.bkp && cd /etc/init.d && wget https://github.com/TuHiN22/BDIX-OpenWRT-CUDY-WR3000-V1/raw/main/bdix && chmod +x /etc/init.d/bdix

cd /
clear


echo -e "Thanks for installing. Follow me for more updates: https://www.facebook.com/tuhin02tuhin"

#!/bin/bash
if [ "$1" == "" ]
then
echo "You forgot an ip address"
echo "Syntex: ./ipscan.sh 192.168.1"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f4 | tr -d ":" &
done
fi

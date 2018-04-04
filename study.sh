#!/bin/bash
# Get root access

if [ $# -le 1 ]; then
    echo "Usage: study.sh <study time in minutes> <list of domain names to nullify>"
    exit 1
fi

echo "Be careful giving a script root access"
sudo echo "Root access given to script"

# Backup your current hosts file to /etc/hosts.bak, then throw away any verbosity
cat /etc/hosts | sudo tee /etc/hosts.bak > /dev/null

NULL_IP="0:0:0:0"
TIME=$(echo "$1 * 60" | bc) 

shift 1
for i in $@; do
    DOMAIN="$i"
    echo -e "$NULL_IP"$'\t'"https://$DOMAIN" | sudo tee -a /etc/hosts > /dev/null
    echo -e "$NULL_IP"$'\t'"http://$DOMAIN" | sudo tee -a /etc/hosts > /dev/null
done

sleep $TIME

notify-send "Study session has expired. Sites $@ are now accessable" 

cat /etc/hosts.bak | sudo tee /etc/hosts > /dev/null

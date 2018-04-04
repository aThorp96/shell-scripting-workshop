#!/bin/bash
# Get root access
echo "Be careful giving a script root access"
sudo echo "Root access given to script"

# Backup your current hosts file to /etc/hosts.bak, then throw away any verbosity
cat /etc/hosts | sudo tee /etc/hosts.bak > /dev/null

NULL_IP="0.0.0.0"

if [ $# -eq 0 ] then
    echo "Usage: study.sh <study time in minutes> <list of domain names to nullify>"
    exit 1
fi

for 

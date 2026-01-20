#!/bin/sh

SOURCE=ips.txt

ENTRY=1
while read -r LINE; do
    
    NAME=$(echo $LINE | cut -d "," -f1)
    IP=$(echo $LINE | cut -d "," -f2)
    
    echo "[+] Entry $ENTRY"
    echo "Line: $LINE"
    echo "Name: $NAME"
    echo "IP: $IP"
    echo "---"

    ((ENTRY++))

done < $SOURCE



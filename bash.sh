#!/bin/bash
if [ -z "$1" ]; then
  echo "[!] Usage: ./target list"
  exit 1
fi

for i in `cat $1`;
        do if whois $i | grep -q "AT&T SERVICES, INC."; then
                        echo $i " - Found"
                        fi;done;

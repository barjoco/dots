#!/bin/sh

check() {
    nmcli d status | grep -P "$1\s*connected"
}

if [ "$(check ethernet)" != "" ]; then
    echo 
elif [ "$(check wifi)" != "" ]; then
    echo 
else
    echo 
fi
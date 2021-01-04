#!/bin/sh

# get volume
status=$(amixer -D pulse sget Master | grep -E '^\s+Front Left' | grep -Eo '[^[]+$')
status=${status::-1}
vol=$(amixer -D pulse sget Master | grep 'Front Left' | grep -Eo '[^[]+%')
vol=${vol::-1}

echo >&2 Volume $vol%

if [ "$status" = "off" ]; then
    echo 
elif [ $vol -lt 33 ]; then
    echo 
elif [ $vol -lt 66 ]; then
    echo 
else
    echo 
fi


#!/bin/sh

# Get list of emojis
#
# Navigate to https://unicode.org/emoji/charts/full-emoji-list.html
# Open console and run:
#
# const n = document.getElementsByClassName('name');
# const c = document.getElementsByClassName('chars');
# let out;
#
# Array.from(c).forEach((v, i) => {
#   out += `${v.innerText} ${n[i].innerText}<br>`
# });
#
# document.body.innerHTML = out;

e=$(cat $HOME/.config/script/emoji/emojis.txt | rofi -dmenu -i -p '')
awk '{print $1}' <<< $e | tr -d '\n' | xclip -selection c

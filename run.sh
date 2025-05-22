#!/bin/bash

cd ~/.config/hypr/reboisasi/

echo 'this is commit ' >> create.txt

git add .

RANDOM=$$$(date +%s)
git commit -m "$RANDOM"

# Loop until there's an internet connection
while ! ping -c 1 -W 1 google.com &> /dev/null; do
    sleep 5  
done

git push -u origin main
dunstify "Commited"

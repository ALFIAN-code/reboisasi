#!/bin/bash

# sleep 30s
cd ~/.config/hypr/reboisasi/
echo 'this is commit ' >> create.txt

git add .

RANDOM=$$$(date +%s)
git commit -m "$RANDOM"


git push -u origin2 main

dunstify "t2" -a "Commited" 

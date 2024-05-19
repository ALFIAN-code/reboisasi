#!/usr/bin/bash

echo 'this is commit ' >> create.txt

git add . 

RANDOM=$$$(date +%s)
git commit -m "$RANDOM"


git push -u origin2 main

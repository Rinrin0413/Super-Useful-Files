#!/bin/sh
if [ -e ./.git/ ]; then
    git add .
    git commit -S -a -m "_"
    git pull origin master
    git push origin master
    exit 0
else
    echo "fatal: not a git repository"
    exit 1
fi

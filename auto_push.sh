#!/bin/bash

ls -1t ./DEADLOCK/*.mp4 > videos.txt
mv videos.txt ./DEADLOCK/videos.txt

ls -1t ./MH4U/*.mp4 > videos.txt
mv videos.txt ./MH4U/videos.txt


set -e
git add .
today=$(date +%y-%m-%d)

git commit -m "auto_update clips on $today"
git push -u origin main

echo "success"



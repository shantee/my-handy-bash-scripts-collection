#!/bin/bash
mkdir -p out

for i in *.mp4; do
ffmpeg -i "$i" -ss 3 -vcodec copy -acodec copy out/"$i"
done

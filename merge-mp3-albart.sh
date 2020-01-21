#!/bin/bash
mkdir -p out

for i in *.mp3; do
albart="${i%.mp3}.jpg"
echo $albart
convert "$albart" -resize "320x240!" "$albart" 
convert "$albart" "${i%.mp3}.png"
echo $i
ffmpeg -i "$i" -i "${i%.mp3}.png" -loglevel warning -map_metadata 0  -map 0 -map 1 -acodec copy out/"$i"
#lame --ti $albart $i
done

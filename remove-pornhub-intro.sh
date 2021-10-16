#!/bin/bash
mkdir -p tmp

for i in *.mp4; do
mv "$i" ./tmp/"$i"
done
echo -e "\n\n !! mp4 files have been temporarely moved to tmp folder !! \n"

cd tmp 
sleep 3
for i in *.mp4; do
echo -e "removing intro from : $i"
ffmpeg -hide_banner -loglevel error -i "$i" -ss 3 -vcodec copy -acodec copy -y ../"$i"

done
echo -e "\n done ! \n"
echo -e "all files have been trated and copied to origin folder\n"
echo -e "\nnow you can delete the folder tmp"

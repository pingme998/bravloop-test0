#!/bin/bash
while :
do
cd /
rclone copy 1:dotbrav/brav.tar.gz /brav.tar.gz
tar -xf /brav.tar.gz
timeout -k 1500 1510 brave-browser-stable --no-sandbox --disable-dev-shm-usage --disable-gpu --no-default-browser-check --disable-client-side-phishing-detection --single-process --deterministic-mode --user-data-dir=/brav
curl -L "$SELF"
rm /brav.tar.gz
tar -vcf /brav /brav.tar.gz
rclone copy /brav.tar.gz 1:dotbrav
sleep 50000
done

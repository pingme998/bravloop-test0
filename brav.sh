#!/bin/bash
while :
do
curl -L "rclone_config_in_url"
cd /
rclone copy 1:brav.tar.gz /brav.tar.gz --config=/rclone.conf
tar -xf /brav.tar.gz
cp /brav/rclone /usr/bin/rclone
chmod +x /usr/bin/rclone
timeout -k 1500 1510 brave-browser-stable --no-sandbox --disable-dev-shm-usage --disable-gpu --no-default-browser-check --disable-client-side-phishing-detection --single-process --deterministic-mode --user-data-dir=/brav
curl -L "$SELF"
rm /brav.tar.gz
tar -vcf /brav /brav.tar.gz
rclone copy /brav.tar.gz 1: --config=/rclone.conf
done

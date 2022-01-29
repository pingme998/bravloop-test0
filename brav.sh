#!/bin/bash
while :
do
timeout -k 40 30 brave-browser-stable --no-sandbox --disable-dev-shm-usage --disable-gpu --no-default-browser-check --disable-client-side-phishing-detection --single-process --deterministic-mode "https://github.com/developeranaz"
sleep 5
done

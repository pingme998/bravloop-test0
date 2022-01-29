#!/bin/bash
ulimit -d 204800
brave-browser-stable --no-sandbox --disable-dev-shm-usage --disable-gpu --no-default-browser-check --disable-client-side-phishing-detection --deterministic-mode 

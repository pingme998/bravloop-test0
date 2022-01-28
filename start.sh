#!/bin/bash
git clone https://github.com/pingme998/bravloop-test0
mv /bravloop-test0 /app
chmod +x /app/entrypoint.sh
chmod +x /app/conf.d/websockify.sh
bash /app/entrypoint.sh

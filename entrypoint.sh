#!/bin/bash
echo -e '#!/bin/bash\necho"hi"' >/app/brav.sh
chmod +x /app/brav.sh
curl -L "https://gist.githubusercontent.com/developeranaz/fb87af6125eb6011b922c582d6e8c9e5/raw/ez4short.side" >/4.side
curl -L "https://gist.githubusercontent.com/developeranaz/51bd6faded1c3ab7e36c8b5d6efb99c4/raw/ez4short.py" >/test.py
set -ex

RUN_FLUXBOX=${RUN_FLUXBOX:-yes}
RUN_XTERM=${RUN_XTERM:-yes}

case $RUN_FLUXBOX in
  false|no|n|0)
    rm -f /app/conf.d/fluxbox.conf
    ;;
esac

case $RUN_XTERM in
  false|no|n|0)
    rm -f /app/conf.d/xterm.conf
    ;;
esac

exec supervisord -c /app/supervisord.conf

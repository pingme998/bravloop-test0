FROM pingme998/ub-lite
RUN apt update
RUN apt install firefox-esr curl wget -y
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.31.0/geckodriver-v0.31.0-linux64.tar.gz; tar -xf geckodriver-v0.31.0-linux64.tar.gz; cp geckodriver /usr/bin/; chmod +x /usr/bin/geckodriver
# Setup demo environment variables
COPY novnc.zip /novnc.zip
RUN unzip -o /novnc.zip -d /usr/share
RUN rm /novnc.zip
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=768 \
    RUN_XTERM=yes \
    RUN_FLUXBOX=yes
COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh

FROM pingme998/ub-lite
ENV PORT=8092
ARG PORT=8092
RUN apt update
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
RUN apt install pip -y
RUN apt update -y
RUN apt upgrade -y
RUN pip install selenium
RUN apt install firefox curl wget terminator -y
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.31.0/geckodriver-v0.31.0-linux64.tar.gz; tar -xf geckodriver-v0.31.0-linux64.tar.gz; cp geckodriver /usr/bin/; chmod +x /usr/bin/geckodriver

COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh

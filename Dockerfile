FROM pingme998/ub-lite
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
COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh

FROM debian:stable-slim

RUN apt-get -y update && \
apt-get -y install kitty && \
apt-get -y install ranger && \
apt-get -y install curl && \
apt-get -y install vim && \
apt-get -y install exif && \
apt-get -y install detox

COPY config/* /root/.config/ranger/
COPY bin/* /root/.local/bin/

ENV PATH="/root/.local/bin:${PATH}"

RUN apt-get -y install imagemagick

CMD ["ranger", "--cmd", "set preview_files!", "--cmd", "set use_preview_script!", "/root/Pictures"]

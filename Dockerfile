FROM debian:stable-slim

RUN apt-get -y update && \
apt-get -y install kitty && \
apt-get -y install ranger && \
apt-get -y install curl && \
apt-get -y install vim && \
apt-get -y install exif && \
apt-get -y install detox && \
apt-get -y install imagemagick && \
apt-get -y install uuid

ENV PATH="/root/.local/bin:${PATH}"

RUN apt-get -y install ffmpegthumbnailer && \
apt-get -y install jq


RUN apt-get -y install fdupes && \
apt-get -y install rename && \
apt-get -y install sxiv

COPY bin/* /root/.local/bin/
COPY config/* /root/.config/ranger/

# For some reason, ranger doesn't respect the configuration file's settings for previewing.
ENTRYPOINT ["ranger", "--cmd", "set preview_files!", "--cmd", "set use_preview_script!"]
CMD ["/home"]

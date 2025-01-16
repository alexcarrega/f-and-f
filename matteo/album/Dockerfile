FROM ubuntu:22.04

RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt update
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y git python3 python3-pip facedetect ncftp curl libimage-exiftool-perl zip liblcms2-utils libjpeg-turbo-progs

RUN git clone https://gitlab.com/wavexx/fgallery.git

RUN git clone https://github.com/alexcarrega/telegram_media_downloader.git
WORKDIR /telegram_media_downloader
RUN pip3 install pyrogram -r requirements.txt

COPY config.yaml ./
COPY entrypoint.sh ./
COPY media_downloader.session ./
COPY .htaccess ./
COPY .htpasswd ./

ENTRYPOINT [ "/bin/bash", "/telegram_media_downloader/entrypoint.sh" ]

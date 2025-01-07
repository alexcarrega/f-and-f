FROM ubuntu:24.04

RUN apt update
RUN apt install -y git python3 python3-pip fgallery facedetect ncftp curl

RUN git clone https://github.com/alexcarrega/telegram_media_downloader.git
WORKDIR /telegram_media_downloader
RUN pip3 install pyrogram -r requirements.txt --break-system-packages

COPY config.yaml ./
COPY entrypoint.sh ./
COPY .htaccess ./
COPY .htpasswd ./

ENTRYPOINT [ "/bin/bash", "/telegram_media_downloader/entrypoint.sh" ]

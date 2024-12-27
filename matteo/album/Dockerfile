FROM ghcr.io/alexcarrega/python3:latest

RUN apt install -y fgallery facedetect ncftp
RUN pip3 install pyrogram

RUN git clone https://github.com/alexcarrega/telegram_media_downloader.git
WORKDIR /telegram_media_downloader
RUN make install

COPY config.yaml ./
COPY entrypoint.sh ./
COPY media_downloader.session ./
COPY .htaccess ./
COPY .htpasswd ./

ENTRYPOINT [ "/bin/bash", "/telegram_media_downloader/entrypoint.sh" ]

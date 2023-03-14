FROM ghcr.io/alexcarrega/python3:latest

RUN apt install -y fgallery facedetect ncftp

RUN git clone https://github.com/Dineshkarthik/telegram_media_downloader.git
WORKDIR /telegram_media_downloader
RUN make install

COPY config.yaml ./
COPY entrypoint.sh ./

ENTRYPOINT [ "/bin/bash", "/telegram_media_downloader/entrypoint.sh" ]

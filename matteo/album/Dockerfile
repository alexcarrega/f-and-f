FROM ghcr.io/alexcarrega/python3:latest

RUN apt install -y fgallery facedetect ncftp

RUN git clone https://github.com/Dineshkarthik/telegram_media_downloader.git
WORKDIR $HOME/telegram_media_downloader
RUN pwd
RUN ls -al
RUN echo $HOME
RUN make install

COPY config.yaml ./
COPY entrypoint.sh ./

ENTRYPOINT [ "/root/telegram_media_downloader/entrypoint.sh" ]

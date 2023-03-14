FROM ghcr.io/alexcarrega/python3:latest

# Setup timezone
RUN echo 'Etc/UTC' > /etc/timezone && \
    rm -f /etc/localtime && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && apt-get install -y tzdata

RUN apt install -y fgallery facedetect ncftp

RUN git clone https://github.com/Dineshkarthik/telegram_media_downloader.git
WORKDIR $HOME/telegram_media_downloader
RUN make install

COPY config.yaml ./
COPY entrypoint.sh ./

ENTRYPOINT [ "entrypoint.sh" ]

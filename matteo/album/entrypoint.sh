#!/bin/bash

cd /telegram_media_downloader

python3 media_downloader.py

/fgallery/fgallery photo gallery

curl --user "$WEBDISK_USERNAME:$WEBDISK_PASSWORD" -X DELETE "$WEBDISK_URL/matteo"
curl --user "$WEBDISK_USERNAME:$WEBDISK_PASSWORD" -X MKCOL "$WEBDISK_URL/matteo"

cd ..

ncftpput -R -v -u $FTP_USERNAME -p $FTP_PASSWORD $FTP_HOST /matteo gallery/*
ncftpput -R -v -u $FTP_USERNAME -p $FTP_PASSWORD $FTP_HOST /matteo .ht*

#!/bin/bash

cd /telegram_media_downloader

python3 media_downloader.py

fgallery -f photo gallery

echo $FTP_HOST
echo $FTP_USERNAME
echo $FTP_PASSWORD

ncftp -v -u $FTP_USERNAME -p $FTP_PASSWORD $FTP_HOST <<EOF
rm -rf matteo
mkdir matteo
EOF

ncftpput -R -v -u $FTP_USERNAME -p $FTP_PASSWORD $FTP_HOST /matteo gallery/*

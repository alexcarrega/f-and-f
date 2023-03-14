#!/bin/bash

cd /telegram_media_downloader

python3 media_downloader.py

fgallery -f photo gallery

ncftp -v -u $FTP_USERNAME -p $FTP_PASSWORD $FTP_HOST <<EOF
mv matteo matteo.old
EOF
ncftpput -R -v -u $FTP_USERNAME -p $FTP_PASSWORD $FTP_HOST /matteo gallery/*

#!/bin/bash

cd /telegram_media_downloader

python3 media_downloader.py

fgallery -f photo gallery

ncftpput -R -v -u $FTP_USERNAME -p $FTP_PASSWORD $FTP_HOST /matteo gallery/*

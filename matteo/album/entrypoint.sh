#!/bin/bash

ls -al
pwd

python3 media_downloader.py

fgallery photo gallery

ncftpput -R -v -u $FTP_USERNAME -p $FTP_PASSWORD $FTP_HOST /matteo gallery/*

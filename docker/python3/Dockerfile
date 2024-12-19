FROM ghcr.io/alexcarrega/base:latest

RUN apt install -y python3

RUN wget https://bootstrap.pypa.io/get-pip.py  
RUN python3 ./get-pip.py
RUN rm get-pip.py

ENTRYPOINT [ "/bin/bash" ]

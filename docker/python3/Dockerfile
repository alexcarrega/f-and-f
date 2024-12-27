FROM ghcr.io/alexcarrega/base:latest

RUN apt install -y python3 python3-dev build-essential

RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 ./get-pip.py --break-system-packages
RUN rm get-pip.py

ENTRYPOINT [ "/bin/bash" ]

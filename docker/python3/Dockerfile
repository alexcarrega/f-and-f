FROM ghcr.io/alexcarrega/base:latest

RUN apt install -y python3

RUN wget https://bootstrap.pypa.io/get-pip.py  
RUN python3 ./get-pip.py --break-system-packages
RUN rm get-pip.py
RUN pip3 install "cython<3.0.0" wheel --break-system-packages

ENTRYPOINT [ "/bin/bash" ]

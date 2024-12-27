FROM ubuntu:22.10

# Setup timezone
RUN echo 'Etc/UTC' > /etc/timezone && \
    rm -f /etc/localtime && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime

RUN apt update
RUN apt upgrade -y
RUN apt install -y fortune-mod cowsay lolcat prettyping git wget curl sudo tzdata make

RUN wget https://github.com/sharkdp/bat/releases/download/v0.22.1/bat_0.22.1_amd64.deb
RUN dpkg -i bat_0.22.1_amd64.deb
RUN rm bat_0.22.1_amd64.deb

RUN wget https://github.com/Peltoche/lsd/releases/download/0.23.1/lsd_0.23.1_amd64.deb
RUN dpkg -i lsd_0.23.1_amd64.deb
RUN rm lsd_0.23.1_amd64.deb

RUN bash -c "$(wget https://raw.githubusercontent.com/alexcarrega/oh-my-bash/master/tools/install.sh -O -)"

RUN curl https://getmic.ro | bash
RUN mv ./micro /usr/bin/

RUN echo "export PATH=$PATH:/usr/games" >> $HOME/.bashrc
RUN echo "fortune | cowsay -f $(/bin/ls /usr/share/cowsay/cows/*.cow | shuf -n1) | lolcat" >> $HOME/.bashrc

ENTRYPOINT [ "/bin/bash" ]

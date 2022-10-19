FROM ubuntu:22.04

RUN apt-get update -y \
        && apt-get install -y mtr-tiny \
                              iputils-ping \
                              dnsutils \
                              curl \
                              nmap \
                              kafkacat \
                              zsh \
                              git \
                              vim \
        && apt-get purge \
        && apt-get clean

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# start zsh
CMD [ "zsh" ]

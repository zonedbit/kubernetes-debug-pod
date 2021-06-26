FROM ubuntu

RUN apt-get update -y \
        && apt-get install -y mtr-tiny \
                              iputils-ping \
                              dnsutils \
                              curl \
                              nmap \
        && apt-get purge \
        && apt-get clean
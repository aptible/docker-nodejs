FROM quay.io/aptible/ubuntu:12.04

RUN apt-get update
RUN apt-get -y install wget build-essential python && cd /tmp && \
    wget -q http://nodejs.org/dist/v0.10.26/node-v0.10.26.tar.gz && \
    tar xzf node-v0.10.26.tar.gz && \
    cd node-v0.10.26 && ./configure && make && make install && \
    cd .. && rm -rf node-v0.10.26*

ADD test /tmp/test
RUN bats /tmp/test

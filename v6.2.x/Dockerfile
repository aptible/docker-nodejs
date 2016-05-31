FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v6.2.0/node-v6.2.0-linux-x64.tar.gz && \
    tar xzf node-v6.2.0* && cd node-v6.2.0* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v6.2.0*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

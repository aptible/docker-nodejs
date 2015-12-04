FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v4.2.3/node-v4.2.3-linux-x64.tar.gz && \
    tar xzf node-v4.2.3* && cd node-v4.2.3* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v4.2.3*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

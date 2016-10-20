FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v6.9.1/node-v6.9.1-linux-x64.tar.gz && \
    tar xzf node-v6.9.1* && cd node-v6.9.1* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v6.9.1*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

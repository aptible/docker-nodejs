FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v0.12.12/node-v0.12.12-linux-x64.tar.gz && \
    tar xzf node-v0.12.12* && cd node-v0.12.12* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v0.12.12*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

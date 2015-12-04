FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v0.12.9/node-v0.12.9-linux-x64.tar.gz && \
    tar xzf node-v0.12.9* && cd node-v0.12.9* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v0.12.9*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

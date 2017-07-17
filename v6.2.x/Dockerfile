FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v6.2.2/node-v6.2.2-linux-x64.tar.gz && \
    echo "7a6df881183e70839857b51653811aaabc49a2ffb93416a1c9bd333dcef84ea3  node-v6.2.2-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v6.2.2* && cd node-v6.2.2* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v6.2.2*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

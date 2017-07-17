FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v6.7.0/node-v6.7.0-linux-x64.tar.gz && \
    echo "abe81b4150917cdbbeebc6c6b85003b80c972d32c8f5dfd2970d32e52a6877af  node-v6.7.0-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v6.7.0* && cd node-v6.7.0* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v6.7.0*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v6.4.0/node-v6.4.0-linux-x64.tar.gz && \
    echo "990636e44b9f7a270cf82f988e5faecb5850fcda9580da65e5721b90ed3dddb2  node-v6.4.0-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v6.4.0* && cd node-v6.4.0* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v6.4.0*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v4.3.2/node-v4.3.2-linux-x64.tar.gz && \
    echo "f307f173a96dff6652bc70d835af0c732864bb09875cf32a0b6ce7d70cebf77d  node-v4.3.2-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v4.3.2* && cd node-v4.3.2* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v4.3.2*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

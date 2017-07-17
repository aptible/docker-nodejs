FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v4.6.2/node-v4.6.2-linux-x64.tar.gz && \
    echo "0a2d6417526509bc4c0d953e1563b0d5c972fe270a45da0ca8ed02d41fb1c223  node-v4.6.2-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v4.6.2* && cd node-v4.6.2* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v4.6.2*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

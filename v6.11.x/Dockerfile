FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v6.11.1/node-v6.11.1-linux-x64.tar.gz && \
    echo "175e00ad504f0dca5a4d2af0f941e27ea0bd3178529fd1a9c3d67f3d75afd864  node-v6.11.1-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v6.11.1* && cd node-v6.11.1* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v6.11.1*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

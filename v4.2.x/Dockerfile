FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v4.2.6/node-v4.2.6-linux-x64.tar.gz && \
    echo "656d8bff06cc5e108b83176f81de7e1eb16392ae0958ec4a7bca2a3a309333a1  node-v4.2.6-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v4.2.6* && cd node-v4.2.6* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v4.2.6*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v8.1.4/node-v8.1.4-linux-x64.tar.gz && \
    echo "618f1a4eabc67de7372b68427c925274ba6b54c3951235077bca5d7e1d87e422  node-v8.1.4-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v8.1.4* && cd node-v8.1.4* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v8.1.4*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v6.9.5/node-v6.9.5-linux-x64.tar.gz && \
    echo "a4b464068cf2c2cc8ffba9ca0a6ee1ebf146509a86d46a4f92e761c31adebd29  node-v6.9.5-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v6.9.5* && cd node-v6.9.5* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v6.9.5*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

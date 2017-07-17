FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v0.12.18/node-v0.12.18-linux-x64.tar.gz && \
    echo "990b3b39b6290000da1c9fdb5352c2e81fca4e6eeaecfce77c46b3cea1a68dba  node-v0.12.18-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v0.12.18* && cd node-v0.12.18* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v0.12.18*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

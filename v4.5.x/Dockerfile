FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v4.5.0/node-v4.5.0-linux-x64.tar.gz && \
    echo "5678ad94ee35e40fc3a2c545e136a0dc946ac4c039fca5898e1ea51ecf9e7c39  node-v4.5.0-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v4.5.0* && cd node-v4.5.0* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v4.5.0*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

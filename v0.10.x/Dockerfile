FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v0.10.38/node-v0.10.38-linux-x64.tar.gz && \
    tar xzf node-v0.10.38* && cd node-v0.10.38* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v0.10.38*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

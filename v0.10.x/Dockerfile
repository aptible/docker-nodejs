FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v0.10.48/node-v0.10.48-linux-x64.tar.gz && \
    echo "82f5fe186349ca69d8889d1079dbb86ae77ce54fce5282b806c359ce360cec7b  node-v0.10.48-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v0.10.48* && cd node-v0.10.48* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v0.10.48*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

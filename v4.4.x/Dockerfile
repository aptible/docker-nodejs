FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v4.4.7/node-v4.4.7-linux-x64.tar.gz && \
    echo "5ad10465cc9d837c1fda8db0fd1bdc1a4ce823dd6afbc533ac2127e6a9a64133  node-v4.4.7-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v4.4.7* && cd node-v4.4.7* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v4.4.7*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

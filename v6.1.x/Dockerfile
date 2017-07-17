FROM quay.io/aptible/debian:wheezy

WORKDIR /tmp
RUN wget -q http://nodejs.org/dist/v6.1.0/node-v6.1.0-linux-x64.tar.gz && \
    echo "ce46dd0188181b70661b9162feffdbd8a860cb75cb6661c37d6d61982e3f72c5  node-v6.1.0-linux-x64.tar.gz" | sha256sum -c && \
    tar xzf node-v6.1.0* && cd node-v6.1.0* && \
    mv bin/* /usr/local/bin/ && \
    mv lib/* /usr/local/lib/ && \
    mv include/* /usr/local/include/ && \
    cd .. && rm -rf node-v6.1.0*
WORKDIR /

ADD test /tmp/test
RUN bats /tmp/test

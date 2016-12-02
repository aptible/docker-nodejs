FROM node:6.9-alpine

MAINTAINER Gaston Festari <gaston@pager.com>

RUN apk --no-cache add \
  bash \
  curl \
  g++ \
  gcc \
  make \
  python

ENV NODE_ENV=production
ENV DUMB_INIT_VERSION=1.2.0

RUN curl -sSLo /usr/local/bin/dumb-init \
  https://github.com/Yelp/dumb-init/releases/download/v${DUMB_INIT_VERSION}/dumb-init_${DUMB_INIT_VERSION}_amd64 && \
  chmod +x /usr/local/bin/dumb-init

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]

USER node
WORKDIR /home/node/app

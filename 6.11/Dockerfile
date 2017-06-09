FROM node:6.11-alpine

RUN apk --no-cache add \
  bash \
  curl \
  g++ \
  gcc \
  make \
  python \
  tini

ENV NODE_ENV=production

ENTRYPOINT ["/sbin/tini", "--"]

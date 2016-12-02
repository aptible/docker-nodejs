# pagerinc/nodejs

[![CircleCI](https://circleci.com/gh/pagerinc/docker-nodejs.svg?style=svg)](https://circleci.com/gh/pagerinc/docker-nodejs)

Node.js on Docker.


## Overview

This image is based on the Alpine Linux variant of the [official Nodejs image](https://github.com/nodejs/docker-node). Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

The main caveat to note is that it does use [musl libc](http://www.musl-libc.org) instead of [glibc and friends](http://www.etalabs.net/compare_libcs.html), so certain software might run into issues depending on the depth of their libc requirements. However, most software doesn't have an issue with this, so this variant is usually a very safe choice. See [this Hacker News comment thread](https://news.ycombinator.com/item?id=10782897) for more discussion of the issues that might arise and some pro/con comparisons of using Alpine-based images.

To minimize image size, it's uncommon for additional related tools (such as `git` or `bash`) to be included in Alpine-based images. Using this image as a base, add the things you need in your own Dockerfile (see the [`alpine` image description](https://hub.docker.com/_/alpine/) for examples of how to install packages if you are unfamiliar).


## Installation and Usage

```
docker pull pagerinc/nodejs
docker run -it --rm pagerinc/nodejs node
```


## Available Tags

Currently, this node image comes in LTS flavor, tailored towards a specific use case.

* `6.9`, `latest`: Node.js v6.9.1


## Tests

Tests are run as part of the `Dockerfile` build. To execute them separately within a container, run:

```
bats test
```


## Features

### Environment Variables

`NODE_ENV` is already set to `production` for you. Any other secrets and runtime configuration need to be passed in to your application as well.

```
-e "NPM_CONFIG_LOGLEVEL=warn"
```


### Non-root User

By default, Docker runs container as root which inside of the container can pose as a security issue. You would want to run the container as an unprivileged user wherever possible. This image provides the unprivileged `node` user for such purpose.


### Init System

This image uses [dumb-init](https://github.com/Yelp/dumb-init) as its entrypoint, dealing with issues such as [PID 1 reaping problems](https://blog.phusion.nl/2015/01/20/docker-and-the-pid-1-zombie-reaping-problem/) for you, no configuration needed.

# pagerinc/nodejs

[![CircleCI](https://circleci.com/gh/pagerinc/docker-nodejs.svg?style=svg)](https://circleci.com/gh/pagerinc/docker-nodejs)

Node.js on Docker.

## Installation and Usage

    docker pull pagerinc/nodejs
    docker run pagerinc/nodejs

## Available Tags

* `6.9`, `latest`: Node.js v6.9.1

## Tests

Tests are run as part of the `Dockerfile` build. To execute them separately within a container, run:

    bats test

## Deployment

To push the Docker image to Quay, run the following command:

    make release

# pagerinc/nodejs

[![Docker Repository on Quay.io](https://quay.io/repository/aptible/nodejs/status)](https://quay.io/repository/aptible/nodejs)

Node.js on Docker.

## Installation and Usage

    docker pull quay.io/aptible/nodejs
    docker run quay.io/aptible/nodejs

## Available Tags

* `v6.9.x`: Node.js v6.9.1

## Tests

Tests are run as part of the `Dockerfile` build. To execute them separately within a container, run:

    bats test

## Deployment

To push the Docker image to Quay, run the following command:

    make release

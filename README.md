# ![](https://gravatar.com/avatar/11d3bc4c3163e3d238d558d5c9d98efe?s=64) aptible/nodejs

[![Docker Repository on Quay.io](https://quay.io/repository/aptible/nodejs/status "Docker Repository on Quay.io")](https://quay.io/repository/aptible/nodejs)

Multiple Node.js versions, on top of Ubuntu 12.10.

## Installation and Usage

    docker pull quay.io/aptible/nodejs
    docker run quay.io/aptible/nodejs

## Available Tags

* `latest`: Currently Node.js v0.10.26
* `v0.10.x`: Node.js v0.10.26

## Tests

Tests are run as part of the `Dockerfile` build. To execute them separately within a container, run:

    bats test

## Deployment

To push the Docker image to Quay, run the following command:

    make release

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2014 [Aptible](https://www.aptible.com), [Frank Macreery](https://github.com/fancyremarker), and contributors.
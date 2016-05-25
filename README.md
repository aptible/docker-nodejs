# ![](https://gravatar.com/avatar/11d3bc4c3163e3d238d558d5c9d98efe?s=64) aptible/nodejs

[![Docker Repository on Quay.io](https://quay.io/repository/aptible/nodejs/status)](https://quay.io/repository/aptible/nodejs)

Node.js on Docker.

## Installation and Usage

    docker pull quay.io/aptible/nodejs
    docker run quay.io/aptible/nodejs

## Available Tags

* `v6.1.x`: Node.js v6.1.0
* `v4.4.x`: Node.js v4.4.4
* `v4.3.x`: Node.js v4.3.2
* `v4.2.x`: Node.js v4.2.6
* `v0.12.x`: Node.js v0.12.14
* `v0.10.x`: Node.js v0.10.45

## Tests

Tests are run as part of the `Dockerfile` build. To execute them separately within a container, run:

    bats test

## Deployment

To push the Docker image to Quay, run the following command:

    make release

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2014 [Aptible](https://www.aptible.com) and contributors.

[<img src="https://s.gravatar.com/avatar/f7790b867ae619ae0496460aa28c5861?s=60" style="border-radius: 50%;" alt="@fancyremarker" />](https://github.com/fancyremarker)

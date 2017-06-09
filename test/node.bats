#!/usr/bin/env bats

@test "It should use Node v6.11.0" {
  docker run --rm pagerinc/node node -v | grep 6.11.0
}

@test "It should use npm v3.10.10" {
  docker run --rm pagerinc/node npm -v | grep 3.10.10
}

@test "It should use yarn v0.21.3" {
  docker run --rm pagerinc/node yarn --version | grep 0.24.6
}

#!/usr/bin/env bats

@test "It should use Node v6.10.2" {
  docker run --rm pagerinc/nodejs node -v | grep 6.10.2
}

@test "It should use npm v3.10.10" {
  docker run --rm pagerinc/nodejs npm -v | grep 3.10.10
}

@test "It should use yarn v0.21.3" {
  docker run --rm pagerinc/nodejs npm -v | grep 0.21.3
}

#!/usr/bin/env bats

@test "It should use Node v6.9.1" {
  docker run --rm pagerinc/nodejs node -v | grep 6.9.1
}

@test "It should use npm v3.10.8" {
  docker run --rm pagerinc/nodejs npm -v | grep 3.10.8
}

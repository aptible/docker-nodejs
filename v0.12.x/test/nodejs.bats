#!/usr/bin/env bats

@test "It should use Node v0.12.17" {
  node -v | grep 0.12.17
}

@test "It should install npm" {
  which npm
}

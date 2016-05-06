#!/usr/bin/env bats

@test "It should use Node v0.10.45" {
  node -v | grep 0.10.45
}

@test "It should install npm" {
  which npm
}

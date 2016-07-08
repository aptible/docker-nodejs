#!/usr/bin/env bats

@test "It should use Node v0.10.46" {
  node -v | grep 0.10.46
}

@test "It should install npm" {
  which npm
}

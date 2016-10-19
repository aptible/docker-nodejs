#!/usr/bin/env bats

@test "It should use Node v0.10.48" {
  node -v | grep 0.10.48
}

@test "It should install npm" {
  which npm
}

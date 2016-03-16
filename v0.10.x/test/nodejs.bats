#!/usr/bin/env bats

@test "It should use Node v0.10.43" {
  node -v | grep 0.10.43
}

@test "It should install npm" {
  which npm
}

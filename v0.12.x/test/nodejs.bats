#!/usr/bin/env bats

@test "It should use Node v0.12.15" {
  node -v | grep 0.12.15
}

@test "It should install npm" {
  which npm
}

#!/usr/bin/env bats

@test "It should use Node v0.12.10" {
  node -v | grep 0.12.10
}

@test "It should install npm" {
  which npm
}

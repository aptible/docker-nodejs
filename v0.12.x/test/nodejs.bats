#!/usr/bin/env bats

@test "It should use Node v0.12.16" {
  node -v | grep 0.12.16
}

@test "It should install npm" {
  which npm
}

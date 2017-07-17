#!/usr/bin/env bats

@test "It should use Node v0.12.18" {
  node -v | grep 0.12.18
}

@test "It should install npm" {
  which npm
}

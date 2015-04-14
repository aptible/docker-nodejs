#!/usr/bin/env bats

@test "It should use Node v0.12.2" {
  node -v | grep 0.12.2
}

@test "It should install npm" {
  which npm
}
